{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving, StandaloneDeriving, DeriveGeneric #-}
{-# LANGUAGE Strict #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant bracket" #-}
-- | Generic machine components
module ASE.Machine where

import Analysis.Environment (Environment)
import qualified Analysis.Environment as Env
import ASE.Domain.SymbolicVariable (SymbolicVariable, PC)
import ASE.Syntax
import Analysis.Monad.Store (StoreM, writeAdr, lookupAdr, StoreM', AbstractCountM(..))
import Analysis.Monad (EnvM, CtxM (getCtx, withCtx), runJoinT)
import Analysis.Monad.Allocation (AllocM, alloc)
import Analysis.Symbolic.Monad (MonadPathCondition)
import Analysis.Monad.Cache (MonadCache)
import Control.Monad.Layer (MonadLayer, upperM)
import Control.Monad.Join (MonadBottom(..), MonadJoinable, MonadJoin, mjoinMap)
import Control.Monad.DomainError (DomainError)
import Control.Monad.Escape (MonadEscape, Esc, MayEscape)
import Domain.Core.AbstractCount (AbstractCount (..))
import Domain.Class (Domain)
import Domain.Symbolic.Class
import qualified Domain.Symbolic.Path as Path
import Data.Kind
import Data.Random
import GHC.IO (unsafePerformIO)
import Lattice.Class
import qualified Lattice.Class as L
import qualified Lattice.Class as Lat
import Lattice.BottomLiftedLattice
import qualified RIO.Map as Map
import RIO hiding (mzero) 
import RIO.State
import Syntax.AST hiding (Label)
import qualified Symbolic.AST
import Analysis.Monad.Context (CtxM(..))
import qualified RIO.Set as Set
import Solver (FormulaSolver, solve)
import Symbolic.AST (Formula, isSat)
import qualified Symbolic.AST as Symbolic
import qualified Symbolic.SMT as SMT
import Solver.Z3
import qualified Domain
import Domain (SchemeDomain)

------------------------------------------------------------
-- Machine components
------------------------------------------------------------

-- | The control component for the abstract machine
data Ctrl v k = Ev !Exp !(Env k) | Ap !v
              deriving (Eq, Ord, Show, Generic)
instance (NFData v, NFData k) => NFData (Ctrl v k)

instance Joinable (Ctrl v k) where    
   join = error "\"join\" not defined for Ctrl but should never be called"
instance BottomLattice (Ctrl v k) where  
   bottom = error "\"bottom\" not defined for Ctrl but should never be called"

-- | The environment
type Env k = Map String (VAdr k)

-- | Map mapping abstract symbolic variables to an abstract count
newtype CountMap a = CountMap { getCountMap :: (Map a AbstractCount) }
              deriving (Ord, Eq, Show, Generic)
instance NFData a => NFData (CountMap a)

-- | A model is a mapping from symbolic variables to program values 
newtype Model v = Model { getModel :: Map SymbolicVariable (Abstract v) }

------------------------------------------------------------
-- Addresses
------------------------------------------------------------

-- | A value address, which is either an allocation of a 
-- variable (based on the location in the AST of the expression of the variable)
-- or a primitive.
data VAdr k = VAdr !(Label Exp) !k | PrimAdr !String
            deriving (Eq, Ord, Show, Generic)
instance NFData k => NFData (VAdr k)

-- | Type of pair addresses
data PAdr k = PAdr Exp !k -- ^ regular pair addresses 
            | PTAdr       -- ^ address for the "top" pair value
            deriving (Eq, Ord, Show, Generic)
instance NFData k => NFData (PAdr k)
instance TopLattice (PAdr k) where top = PTAdr

-- | Type of vector addresses
data CAdr k = CAdr Exp !k  -- ^ regular veCtor addresses
            | CTAdr        -- ^ address for the "top" vector value
            deriving (Eq, Ord, Show, Generic)
instance NFData k => NFData (CAdr k)
instance TopLattice (CAdr k) where top = CTAdr

-- | Type of string addresses
data SAdr k = SAdr Exp !k  -- ^ regular string addresses
            | STAdr        -- ^ address for the "top" string value
            deriving (Eq, Ord, Show, Generic)
instance NFData k => NFData (SAdr k)
instance TopLattice (SAdr k) where top = STAdr

------------------------------------------------------------
-- Initial heaps
------------------------------------------------------------

-- | An initial heap store is initially empty except for a 
-- special "top" address which points to a "top" value.
initialHeapSto :: (TopLattice adr, TopLattice v) => Map adr v
initialHeapSto = Map.singleton top top

------------------------------------------------------------
-- Continuations
------------------------------------------------------------

-- | A continuation frame in the abstract machine, since the 
-- abstract machine is designed to only work on languages in ANF, 
-- there is only one continuation.
data KFrame k = LetK ![VAdr k]     -- ^ the list of remaining addresses to store
                     ![Exp]        -- ^ list of remaining bindings 
                     !Exp          -- ^ body
                     !(Env k)      -- ^ the environment in which the let expression has to be evaluated
              deriving (Eq, Ord, Show, Generic)
instance NFData k => NFData (KFrame k)

-- | Failure continuation
data FFrame = Branch !PC !(CountMap SymbolicVariable)
            deriving (Eq, Ord, Show, Generic)
instance NFData FFrame

-- | Continuation address
data KAdr k = KAdr !(Label Exp) !k | Hlt
               deriving (Eq, Ord, Show, Generic)
instance NFData k => NFData (KAdr k)

-- | Failure continuation address
data FAdr k = FAdr !(Label Exp) !k | FHlt
            deriving (Ord, Eq, Show, Generic)
instance NFData k => NFData (FAdr k)

-- | A continuation combines a continuation frame with a continuation 
-- address.
data KKont k = KKont !(KFrame k) !(KAdr k)
          deriving (Eq, Ord, Show, Generic)
instance NFData k => NFData (KKont k)

-- | A failure continuation combines a continuation frame with a continuation address
data FKont k = FKont !FFrame !(FAdr k)
            deriving (Eq, Ord, Show, Generic)
instance NFData k => NFData (FKont k)

------------------------------------------------------------
-- Abstract count monad
------------------------------------------------------------

-- | A monad for managing the abstract count of the specified 
-- address type @a@.
class MonadAbstractCount a m | m -> a where
   -- | Increments the abstract count of the given address 
   -- in the abstract count mapping
   countIncrement :: a -> m ()
   -- | Returns the current count of the given addres 
   -- in the abstract count mapping.
   currentCount :: a -> m AbstractCount
   -- | Returns the entire abstract count mapping
   getCounts :: m (CountMap a)
   
-- | Layered instance
instance {-# OVERLAPPABLE #-} (Monad m, MonadLayer t, MonadAbstractCount a m) =>  MonadAbstractCount a (t m) where
   countIncrement = upperM . countIncrement
   currentCount = upperM . currentCount
   getCounts = upperM getCounts

-- | Trivial instance of the @MonadAbstractCount@ type class 
-- as a state monad managing an abstract count mapping.
newtype AbstractCountT α m a = AbstractCountT (StateT (Map α AbstractCount) m a) 
               deriving (Monad, Applicative, Functor, MonadTrans, MonadLayer, MonadCache, MonadJoinable, MonadState (Map α AbstractCount))
instance (Ord α, MonadBottom m) => MonadAbstractCount α (AbstractCountT α m) where
   countIncrement α = modify (Map.insertWith Lat.join α CountOne)
   currentCount α = gets (Map.lookup α) >>= maybe mzero return
   getCounts = gets CountMap
-- | Run an @AbstractCountT@ monad transformer with the given abstract count mapping
runAbstractCountT :: Map α AbstractCount -> AbstractCountT α m a -> m (a, Map α AbstractCount)
runAbstractCountT st (AbstractCountT m) = runStateT m st

--- XXX: MonadAbstractCount duplicates some of the behavior of AbstractCountM, 
-- those two should be merged. The major difference between them is that the 
-- former is meant to put constraints on a store with values, while the other 
-- is independent of whether the things counted are addresses in a store 
-- or something else.
instance (Ord α, MonadBottom m) => AbstractCountM α (AbstractCountT α m) where  
   count = fmap getCountMap getCounts

-- | A monad that manages the continuation stack, it stores the 
-- continuation in the continuation store.
class (StoreM (KAdr k) (Set (KKont k)) m,
       StoreM (FAdr k) (Set (FKont k)) m) => MonadContinuation k m | m -> k where
   -- | Lookup the address of the top of the continuation stack
   topAddress :: m (KAdr k)
   -- | Lookup the top address of the failure continuation stack
   topFailAddress :: m (FAdr k)
   -- | Change the top address of the continuation stack
   putTopAddress :: KAdr k -> m ()
   -- | Change the top address of the failure continuation stack
   putFailAddress :: FAdr k -> m ()
   -- | Push a continuation on the continuation stack
   pushK :: KAdr k -> KFrame k -> m ()
   pushK adr frm = {-# SCC "PUSHK" #-} topAddress >>= (writeAdr adr . Set.singleton  .KKont frm) >> putTopAddress adr
   -- | Push a failure continuation on the failure continuatuion stack
   pushF :: FAdr k -> FFrame -> m ()
   pushF adr frm = {-# SCC "PUSHF" #-} topFailAddress >>= (writeAdr adr . Set.singleton . FKont frm) >> putFailAddress adr
   -- | Pop a continuation frame from the continuation stack
   popK :: (Joinable a, BottomLattice a, MonadBottom m, MonadJoin m) => (KFrame k -> m a) -> m a
   popK f = topAddress >>= lookupAdr >>= mjoinMap linkAndExecute  
      where linkAndExecute (KKont frm nxt) = putTopAddress nxt >> f frm
   -- | Pop a continuation frame from the failure continuation stack
   popF :: (Joinable a, BottomLattice a, MonadBottom m, MonadJoin m) => (FFrame -> m a) -> m a
   popF f = topFailAddress >>= lookupAdr >>= mjoinMap linkAndExecute
      where linkAndExecute (FKont frm nxt) = putFailAddress nxt >> f frm

-- | Layered instance of @MonadContinuation@
instance {-# OVERLAPPABLE #-} (MonadContinuation k m, MonadLayer t, Monad (t m), Monad m) => MonadContinuation k (t m) where  
   topAddress = upperM topAddress
   topFailAddress = upperM topFailAddress
   putTopAddress = upperM . putTopAddress
   putFailAddress = upperM . putFailAddress
-- | The state for keeping track of the current top continuation and top failure continuation
data ContinuationState k =  ContinuationState {
      stateTopAddress :: KAdr k,
      stateTopFailAddress :: FAdr k
   } deriving (Ord, Eq, Show, Generic)
instance (NFData k) => NFData (ContinuationState k)
-- | Initial contents of the continuation stack
initialContinuationStack :: ContinuationState k 
initialContinuationStack = ContinuationState Hlt FHlt 

-- | Dummy instance of @Joinable@ and @BottomLattice@ for @ContinuationState@
instance Joinable (ContinuationState k) where 
   join = error "no \"join\" implement for \"ContinuationState\": continuation states should not be joined together"
instance BottomLattice (ContinuationState k) where 
   bottom = error "no \"bottom\" implement for \"ContinuationState\": continuation states should not be bottomed"

-- | State monad intepretation of the @MonadContinuation@ type class
newtype ContinuationT k m a = ContinuationT (StateT (ContinuationState k) m a)
                          deriving (Functor, Applicative, MonadJoinable, MonadBottom, Monad, MonadTrans, MonadLayer, MonadCache, MonadState (ContinuationState k)) 
instance ( StoreM (KAdr k) (Set (KKont k)) m,
           StoreM (FAdr k) (Set (FKont k)) m ) => MonadContinuation k (ContinuationT k m) where
   topAddress = gets stateTopAddress
   topFailAddress = gets stateTopFailAddress
   putTopAddress α = modify (\st -> st { stateTopAddress = α })
   putFailAddress α = modify (\st -> st { stateTopFailAddress = α })

------------------------------------------------------------
-- Small-step interface to the context
------------------------------------------------------------

-- | The context in a small-step semantics behaves differently 
-- than in the big-step setting. In the big-step setting, the 
-- context is passed down in a @Reader@ monad style to 
-- each evaluation function. Small-step semantics, however, 
-- do not recursive call evaluation functions and simply 
-- return the next state to be executed. Hence, the context 
-- should behave more as a @State@ monad where it can be 
-- imperatively updated and returned from the stepping function.
class MonadSmallstepContext k m | m -> k where    
   -- | Change the current context
   putCtx :: k -> m ()

-- | A layered instance of the @MonadSmallstepContext@ type class
instance {-# OVERLAPPABLE #-} (Monad m, MonadLayer t, MonadSmallstepContext k m) => MonadSmallstepContext k (t m) where   
   putCtx = upperM . putCtx

-- | A trivial instance of @MonadSmallstepContext@ using a state monad
newtype SmallstepContextT k m a = SmallstepContextT (StateT k m a) 
                           deriving (Applicative, Monad, Functor, MonadCache, MonadJoinable, MonadTrans, MonadLayer, MonadState k)
instance (Monad m) => MonadSmallstepContext k (SmallstepContextT k m) where 
   putCtx = put
instance (Monad m) => CtxM (SmallstepContextT k m) k where  
   withCtx f m = fmap f getCtx >>= putCtx >> m
   getCtx = get

-- Dummy instance of @Joinable@ and @BottomLattice@ for [Span] 
-- so that @MonadJoinable@ can be derrived for @SmallstepContextT@
instance {-# OVERLAPPING #-} Joinable [Span] where   
   join = error "no \"join\" for \"Span\""
instance {-# OVERLAPPING #-} BottomLattice [Span] where   
   bottom = error "no \"bottom\" for \"Span\""

------------------------------------------------------------
-- Analysis configuration
------------------------------------------------------------

-- | The analysis configuration, this configures some common 
-- parameters such as the "k" for k-CFA
data Configuration k v = Configuration {
      k  :: Int,
      e0 :: Exp, 
      σ0 :: Map (VAdr k) v,
      ρ0 :: Env k
   } deriving (Ord, Eq, Show)

-- | The configuration is passed down in a reader-like fashion
class Monad m => MonadConfiguration k v m | m -> k v where    
   getK :: m Int
   getConfiguration :: m (Configuration k v)

instance {-# OVERLAPPABLE #-} (MonadLayer t,  Monad m, Monad (t m), MonadConfiguration k v m, Monad m) => MonadConfiguration k v (t m) where   
   getK = upperM getK
   getConfiguration = upperM getConfiguration
-- | Trivial instance of the @MonadConfiguration@ type class using the reader monad transformer
newtype ConfigurationT k v m a = ConfigurationT { runConfigurationT' ::  (ReaderT (Configuration k v) m a)  }
      deriving (Applicative, Monad, Functor, MonadTrans, MonadLayer, MonadReader (Configuration k v)) 
instance (Monad m) => MonadConfiguration k v (ConfigurationT k v m) where  
   getK = asks k
   getConfiguration = ask

-- | Run a computation inside the @ConfigurationT@ monad
runConfigurationT :: Configuration k v -> ConfigurationT k v m a -> m a
runConfigurationT cfg = flip runReaderT cfg . runConfigurationT' 

------------------------------------------------------------
-- K-cfa
------------------------------------------------------------

pushCtx :: MonadConfiguration k v m => e -> [e] -> m [e]
pushCtx e es = do   
   k' <- getK
   return (take k' (e : es))

------------------------------------------------------------
-- Random inputs
------------------------------------------------------------

-- | Monad to model an infinite sequence of random values
class (InputFrom v) => MonadInput v m | m -> v where
   -- | Take a value from the infinite random sequence
   randomInput :: m v

-- | Values from which a value can be taken based on some
-- unbounded random integer
class InputFrom v where    
   inputValue :: Int -> v

-- | Layered instance of the @MonadInput@ type class
instance {-# OVERLAPPABLE #-} (MonadLayer t, Monad m, MonadInput v m) => MonadInput v (t m) where  
   randomInput = upperM randomInput

-- | Dummy instance of @Joinable@ for @RandomSeq@ since they should 
-- never be joined together
instance BottomLattice RandomSeq where   
   bottom = error "no \"bottom\" for \"RandomSeq\""

-- | Trivial instane based on carrying around a `Data.Random` infinite 
-- sequence of integers in a  state monad
newtype InputT v m a = InputT (StateT RandomSeq m a)
                     deriving (Applicative, Monad, MonadJoinable, Functor, MonadState RandomSeq, MonadTrans, MonadLayer, MonadCache)
-- | Run an @InputT@ transformer 
runInputT :: RandomSeq -> InputT v m a -> m (a, RandomSeq)
runInputT r (InputT m) = runStateT m r

instance (Monad m, InputFrom v) => MonadInput v (InputT v m) where   
   randomInput = do  
      (x, xs) <- gets takeSeq
      put xs 
      return (inputValue (fromIntegral x))

------------------------------------------------------------
-- Interaction with the model
------------------------------------------------------------

-- | Widen a set of formulae into a single one
widenPC :: Map SymbolicVariable AbstractCount -> PC -> PC
widenPC count = Set.singleton . foldr1 (\a -> fst . fromBL . join a)
   where join a b = Path.join a b
                  & runAbstractCountT count
                  & runJoinT
                  & runZ3SolverWithSetup SMT.prelude
                  & unsafePerformIO

-- | Checks whether one path constraint subsumes the other
subsumesPC :: Map SymbolicVariable AbstractCount -> PC -> PC -> Bool
subsumesPC count a =  fromBL . subsumes a
   where subsumes a b = traceShow a $ Path.subsumesPC a b 
                      & runAbstractCountT count
                      & runJoinT 
                      & runZ3SolverWithSetup SMT.prelude
                      & unsafePerformIO 
                      & fmap fst

-- | A monad to interact with the concolic model, parametrized 
-- by the type of symbolic variable @i@, a program domain @v@, and a 
-- monad @m@
class (SymbolicValue v i) => MonadModel i v m | m -> i v where
   -- | Lookup a symbolic variable from the model, returns only 
   -- the abstract part of the program value.
   lookupModel :: i -> m (Abstract v)
   -- | Replaces the old model with a new one by joining corresponding
   -- addresses.
   putModel :: Map i (Abstract v) -> m ()

-- | A layered instance of `MonadModel`
instance {-# OVERLAPPABLE #-} (Monad m, MonadModel i v m, SymbolicValue v i, MonadLayer t) => MonadModel i v (t m) where
   lookupModel = upperM . lookupModel
   putModel = upperM . putModel
-- | A trivial instance of the MonadModel based on the state monad
newtype ModelT i v m a = ModelT (StateT (Map i (Abstract v)) m a)
                       deriving (Monad, Applicative, MonadCache, MonadLayer, MonadTrans, Functor)

deriving instance (Joinable (Abstract v), MonadJoinable m, Ord i) => MonadJoinable (ModelT i v m)

-- | Run a @ModelT@ monad transformer
runModelT :: Map i (Abstract v) -> ModelT i v m a -> m (a, Map i (Abstract v))
runModelT s (ModelT m) = runStateT m s

instance (SymbolicValue v i, Joinable (Abstract v),  Ord i, MonadBottom m, MonadInput (Abstract v) m) => MonadModel i v (ModelT i v m) where
   lookupModel i = do 
      v <- ModelT $ gets (Map.lookup i) >>= maybe (lift randomInput) return
      ModelT $ modify (Map.insertWith L.join i v)
      return v
   putModel m = ModelT $ modify (Map.unionWith L.join m)

-- | Allocate a symbolic variable
allocSym :: (AllocM m (Label Exp) SymbolicVariable, MonadAbstractCount SymbolicVariable m) => Label Exp -> m  SymbolicVariable
allocSym ℓ = do 
   adr <- alloc ℓ 
   countIncrement adr
   return adr

------------------------------------------------------------
-- Machine interface
------------------------------------------------------------

type MonadMachine k v m = (MonadAbstractCount SymbolicVariable m,
                           MonadModel SymbolicVariable v m, 
                           MonadContinuation k m, 
                           -- Store interactions
                           StoreM (VAdr k) v m,
                           StoreM (PAdr k) (Domain.PaiDom v) m,
                           StoreM (SAdr k) (Domain.StrDom v) m, 
                           StoreM (CAdr k) (Domain.VecDom v) m, 
                           StoreM' (Map (VAdr k) v) (VAdr k) v m,
                           StoreM' (Map (KAdr k) (Set (KKont k))) (KAdr k) (Set (KKont k)) m,
                           -- Non-determinism monad
                           MonadJoin m,
                           -- Allocation monads
                           AllocM m (Label Exp) (KAdr k), 
                           AllocM m (Label Exp) (FAdr k), 
                           AllocM m (Label Exp) SymbolicVariable, 
                           AllocM m (Label Exp) (VAdr k),
                           AllocM m Exp (PAdr k),
                           AllocM m Exp (SAdr k),
                           AllocM m Exp (CAdr k),
                           MonadEscape m,
                           Domain (Esc m) DomainError,
                           -- Context
                           MonadSmallstepContext k m, 
                           MonadSmallstepContext PC m,
                           CtxM m k,
                           CtxM m PC,
                           MonadConfiguration k v m,
                           -- Path condition
                           MonadPathCondition SymbolicVariable m v,  
                           FormulaSolver SymbolicVariable m,
                           -- Environment monad
                           EnvM m (VAdr k) (Env k))

------------------------------------------------------------
-- Small-step "conversion"
------------------------------------------------------------

-- | For convenience, turns a type that has "MayEscape", into a type without one. 
type family Unescape (k :: Type) :: Type where  
   Unescape (MayEscape e v) = v
   Unescape (a, b) = (Unescape a, Unescape b)
   Unescape t = t


