{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving, StandaloneDeriving, DeriveGeneric, AllowAmbiguousTypes, TypeApplications, ScopedTypeVariables, PatternSynonyms #-}
{-# LANGUAGE Strict #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant bracket" #-}
{-# LANGUAGE RankNTypes #-}
{-# HLINT ignore "Use newtype instead of data" #-}
-- | Generic machine components
module ASE.Machine where

import Analysis.Environment (Environment)
import qualified Analysis.Environment as Env
import ASE.Domain.SymbolicVariable (SymbolicVariable, PC)
import ASE.Syntax
import ASE.Monad
import Analysis.Monad.Store (StoreM, writeAdr, lookupAdr, StoreM', AbstractCountM(..))
import Analysis.Monad (EnvM, CtxM (getCtx, withCtx), runJoinT)
import Analysis.Monad.Allocation (AllocM, alloc)
import Analysis.Symbolic.Monad (MonadPathCondition)
import Analysis.Monad.Cache (MonadCache)
import Control.Monad.Layer (MonadLayer, upperM)
import Control.Monad.Join (MonadBottom(..), MonadJoinable, MonadJoin, mjoinMap)
import Control.Monad.DomainError (DomainError)
import Control.Monad.Escape (MonadEscape, Esc, MayEscape)
import Data.Maybe
import qualified Domain.Class as Domain
import Domain.Core.BoolDomain.Class
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
import Control.Monad.Join (mjoins)
import ASE.PC (MonadSnapshotPathCondition)

------------------------------------------------------------
-- Machine components
------------------------------------------------------------

-- | The control component for the abstract machine
data Ctrl v k = Ev !Exp !(Env k) | Ap !v | Blm !v !Span
              deriving (Eq, Ord, Show, Generic)
instance (NFData v, NFData k) => NFData (Ctrl v k)

instance Joinable (Ctrl v k) where
   join = error "\"join\" not defined for Ctrl but should never be called"
instance BottomLattice (Ctrl v k) where
   bottom = error "\"bottom\" not defined for Ctrl but should never be called"

-- | The environment
type Env k = Map String (VAdr k)

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
instance Joinable (KFrame k) where  
   join = error "join not implemented for KFrame"

-- | Failure continuation
newtype FFrame = Branch { branchPC :: PC }
            deriving (Eq, Ord, Show, Generic)
instance NFData FFrame
instance Joinable FFrame where  
   join = error "join not implemented for FFrame"


-- | Continuation address
data KAdr k = KAdr !(Label Exp) !k | Hlt
               deriving (Eq, Ord, Show, Generic)
instance NFData k => NFData (KAdr k)

-- | Failure continuation address
data FAdr k = FAdr !(Label Exp) !k | FHlt
            deriving (Ord, Eq, Show, Generic)
instance NFData k => NFData (FAdr k)

-- | A continuation, indexed by the type of continuation frame and address
data Kont frm adr = Kont {getFrm :: !frm, getNxt :: !(Maybe adr) }
                  deriving (Eq, Ord, Show, Generic)
instance (NFData frm, NFData adr) => NFData (Kont frm adr)

-- | A continuation combines a continuation frame with a continuation 
-- address.
type KKont k = Kont (KFrame k) (KAdr k)

-- | A failure continuation combines a continuation frame with a continuation address
type FKont k = Kont FFrame (FAdr k)

------------------------------------------------------------
-- Continuations
------------------------------------------------------------

-- | Continuation stack, indexed by type of continuation address,
-- and the type of continuation frame
class Monad m => MonadContinuationStack a frm m | m a -> frm where
   -- | Checks whether there is an element on top of the stack 
   stackEmpty :: m Bool
   -- | Read the top frame of the continuation stack
   peek :: m (Maybe frm)
   -- | Push a continuation on the continuation stack
   push :: a -> frm -> m ()
   -- | Pop a continuation from the continuation stack 
   pop :: m frm

-- | Pop a continuation frame from the continuation stack 
-- and execute the given function.
popExec :: forall adr frm m a . (MonadJoinable m, MonadBottom m, MonadContinuationStack adr frm m, Joinable a) => (frm -> m a) -> m a
popExec f  = pop @adr >>= f

-- | Layered instance of @MonadContinuationStack@
instance {-# OVERLAPPABLE #-} (MonadLayer t, Monad (t m), MonadContinuationStack a frm m) => MonadContinuationStack a frm (t m) where
   stackEmpty = upperM (stackEmpty @a)
   peek = upperM (peek @a)
   push adr = upperM . push @a adr
   pop = upperM (pop @a)

------------------------------
-- Store based continuations
------------------------------

-- | @MonadContinuationStack@ implementation based on a combination of a top address 
-- and an underlying store
newtype StoreContinuationStackT adr frm m a = ContinuationStackT (StateT (StoreContinuationState adr) m a)
                                            deriving (Applicative, Functor, Monad, MonadState (StoreContinuationState adr), MonadJoinable, MonadBottom, MonadCache, MonadLayer)

-- | The type of state kept for keeping track of the top of the continuation stack
newtype StoreContinuationState adr = StoreContinuationState { topContinuationAddress :: Maybe adr }
                                   deriving (Eq, Ord, Show, Generic)
instance (NFData adr) => NFData (StoreContinuationState adr)

-- | Initial contents of a store based continuation stack
initialContinuationStack :: StoreContinuationState k
initialContinuationStack = StoreContinuationState Nothing

-- | Pattern that matches when the continuation stack is a halting continuation
pattern KHlt <- StoreContinuationState Nothing

instance Joinable (StoreContinuationState adr) where
   join = error "no join implemented for @StoreContinuationState@"
instance BottomLattice (StoreContinuationState adr) where
   bottom = StoreContinuationState Nothing

instance (StoreM adr (Set (Kont frm adr)) m, Monad m, MonadJoin m, Ord adr, Ord frm, Joinable frm) => MonadContinuationStack adr frm (StoreContinuationStackT adr frm m) where
   stackEmpty = gets (isNothing . topContinuationAddress)
   peek = gets topContinuationAddress >>= (traverse (mjoinMap (return . getFrm) <=< lookupAdr))
   push adr' frm = do
      adr <- gets topContinuationAddress
      put (StoreContinuationState (Just adr'))
      writeAdr adr' (Set.singleton $ Kont frm adr)
   pop = do
      adr <- gets (fromJust . topContinuationAddress)
      knt <- lookupAdr adr
      mjoinMap (\knt -> do
         put (StoreContinuationState (getNxt knt))
         return (getFrm knt)) (Set.toList knt)

----------------------------------------
-- Stack based continuations
----------------------------------------

-- | A simpler version of the @MonadContinuationStack@ which actually uses a stack internally
-- use only in combination with a visited set, and a finite number of continuations!
newtype StackContinuationStackT adr frm m a = StackContinuationStackT (StateT [frm] m a)
                                            deriving (Applicative, Functor, Monad, MonadState [frm], MonadLayer, MonadCache)
runWithStackContinuationT :: Monad m => StackContinuationStackT adr frm m a -> m a  
runWithStackContinuationT (StackContinuationStackT m) = evalStateT m []

instance (Monad m) => MonadContinuationStack adr frm (StackContinuationStackT adr frm m) where
   stackEmpty = gets null
   peek = gets (\case [] -> Nothing
                      (h:_) -> Just h)
   push _ frm = modify (frm:)
   pop = do { top <- gets head ; modify tail ; return top }

------------------------------------------------------------
-- Abstract counts
------------------------------------------------------------

-- | Restrict the count mapping according to the variables in the path condition
restrictCountMap :: (Ord i) => Symbolic.PC i -> CountMap i -> CountMap i
restrictCountMap pc = CountMap . flip Map.restrictKeys (Set.unions (Set.map Symbolic.variables pc)) . getCountMap


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
   withCtx f m = (getCtx >>= putCtx . f) >> m
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
-- Visited set 
------------------------------------------------------------

-- | Monad to keep track of the visited set
class MonadVisitedSet e m | m -> e where
   -- | Add an element to the visited set.
   addVisited :: e -> m ()
   -- | Checks whether the element is in the visited set, 
   -- can be @top@
   isVisited :: BoolDomain b => e -> m b

-- | Trivial layered instance of @MonadVisitedSet@
instance {-# OVERLAPPABLE #-} (MonadLayer t, Monad m, MonadVisitedSet e m) => MonadVisitedSet e (t m) where
   addVisited = upperM . addVisited
   isVisited  = upperM . isVisited

-- | An abstract data structure that keeps track of a visited set. 
-- Concretely, it is implemented as two sets: one for the elements 
-- that are visited, and another for elements that **might** be visited.
--
-- The former set contains the elements that are added with @addVisited@
-- while the latter set contains the elements result from joining two 
-- visited sets together since their might be elements that are in one 
-- visited set but not in the other.
data VisitedSet e = VisitedSet { visited :: Set e, mayVisited :: Set e }
                  deriving (Ord, Eq, Show, Generic)

-- | Insert an element into a the visited set
insertVisited :: Ord e => e -> VisitedSet e -> VisitedSet e
insertVisited e v = v { visited = Set.insert e (visited v) }

-- | Check whether an element is in the visited set
containsVisited :: Ord e => BoolDomain b => e -> VisitedSet e -> b
containsVisited e v
   | Set.member e (mayVisited v) = boolTop
   | otherwise = Domain.inject (Set.member e (visited v))

-- | Returns an empty visited set
emptyVisited :: VisitedSet e
emptyVisited = VisitedSet Set.empty Set.empty

instance NFData e => NFData (VisitedSet e)
instance Ord e => BottomLattice (VisitedSet e) where
   bottom = emptyVisited
instance Ord e => Joinable (VisitedSet e) where
   join (VisitedSet a1 b1) (VisitedSet a2 b2) = VisitedSet (Set.intersection a1 a2) -- the elements visited in both sets   
                                                           ((Set.union a1 a2) `Set.difference` (Set.intersection a1 a2) `Set.union` (Set.union b1 b2))
instance (Eq e, Ord e) => PartialOrder (VisitedSet e) where
   leq (VisitedSet a1 b1) (VisitedSet a2 b2) = (a1 == a2) && (leq b1 b2)

-- | Trivial instance of @MonadVisitedSet@ based on the state monad
newtype VisitedT e m a = VisitedT { getVisitedT :: StateT (VisitedSet e) m a }
                     deriving (Applicative, Functor, Monad, MonadState (VisitedSet e), MonadCache, MonadLayer, MonadJoinable)

runVisitedT :: Monad m => VisitedT e m a -> m a
runVisitedT (VisitedT m) = evalStateT m emptyVisited

instance (Ord e, Monad m) => MonadVisitedSet e (VisitedT e m) where
   addVisited e = modify (insertVisited e)
   isVisited e = gets (containsVisited e)

------------------------------------------------------------
-- Machine interface
------------------------------------------------------------

type MonadMachine k v m = (MonadAbstractCount SymbolicVariable m,
                           MonadModel SymbolicVariable v m,
                           MonadContinuationStack (FAdr k) FFrame m,
                           MonadContinuationStack (KAdr k) (KFrame k) m,
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
                           MonadSnapshotPathCondition SymbolicVariable m,
                           FormulaSolver SymbolicVariable m,
                           MonadVisitedSet PC m,
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


