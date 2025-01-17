{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant bracket" #-}
-- | Generic machine components
module ASE.Machine where

import Analysis.Environment (Environment)
import qualified Analysis.Environment as Env
import ASE.Domain.SymbolicVariable (SymbolicVariable, PC)
import ASE.Syntax
import Analysis.Monad.Store (StoreM, writeAdr, lookupAdr, StoreM')
import Analysis.Monad (EnvM, CtxM (withCtx))
import Analysis.Monad.Allocation (AllocM, alloc)
import Analysis.Symbolic.Monad (MonadPathCondition)
import Analysis.ASE.Smallstep (State(topFail))
import Analysis.Monad.Cache (MonadCache)
import Control.Monad.Layer (MonadLayer, upperM)
import Control.Monad.Join (MonadBottom(..), MonadJoin)
import Control.Monad.DomainError (DomainError)
import Control.Monad.Escape (MonadEscape, Esc)
import Domain.Core.AbstractCount (AbstractCount (..))
import Domain.Class (Domain)
import Domain.Symbolic.Class
import Data.Kind
import Lattice.Class
import qualified Lattice.Class as Lat
import qualified RIO.Map as Map
import RIO hiding (mzero) 
import RIO.State
import Syntax.AST hiding (Label)
import qualified Symbolic.AST
import Analysis.Monad.Context (CtxM)
import qualified RIO.Set as Set
import Solver (FormulaSolver, solve)
import Symbolic.AST (Formula, isSat)
import qualified Symbolic.AST as Symbolic
import qualified Domain
import Domain (SchemeDomain)

------------------------------------------------------------
-- Machine components
------------------------------------------------------------

-- | The control component for the abstract machine
data Ctrl v k = Ev !Exp !(Env k) | Ap !v
              deriving (Eq, Ord, Show)

instance Joinable (Ctrl v k) where    
   join = error "\"join\" not defined for Ctrl but should never bet called"
instance BottomLattice (Ctrl v k) where  
   bottom = error "\"bottom\" not defined for Ctrl but should never be called"

-- | The environment
type Env k = Map String (VAdr k)

-- | Map mapping abstract symbolic variables to an abstract count
newtype CountMap a = CountMap { getCountMap :: (Map a AbstractCount) }
              deriving (Ord, Eq, Show)

-- | A model is a mapping from symbolic variables to program values 
newtype Model v = Model { getModel :: Map SymbolicVariable (Abstract v) }

------------------------------------------------------------
-- Addresses
------------------------------------------------------------

-- | A value address, which is either an allocation of a 
-- variable (based on the location in the AST of the expression of the variable)
-- or a primitive.
data VAdr k = VAdr !(Label Exp) !k | PrimAdr !String
            deriving (Eq, Ord, Show)

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
              deriving (Eq, Ord, Show)

-- | Failure continuation
data FFrame = Branch !PC !(CountMap SymbolicVariable)
            deriving (Eq, Ord, Show)


-- | Continuation address
data KAdr k = KAdr !(Label Exp) !k | Hlt
               deriving (Eq, Ord, Show)

-- | Failure continuation address
data FAdr k = FAdr !(Label Exp) !k | FHlt
            deriving (Ord, Eq, Show)

-- | A continuation combines a continuation frame with a continuation 
-- address.
data KKont k = KKont !(KFrame k) !(KAdr k)
          deriving (Eq, Ord, Show)

-- | A failure continuation combines a continuation frame with a continuation address
data FKont k = FKont !FFrame !(FAdr k)
            deriving (Eq, Ord, Show)

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
               deriving (Monad, Applicative, Functor, MonadTrans, MonadLayer, MonadCache, MonadState (Map α AbstractCount))
instance (Ord α, MonadBottom m) => MonadAbstractCount α (AbstractCountT α m) where
   countIncrement α = modify (Map.insertWith Lat.join α CountOne)
   currentCount α = gets (Map.lookup α) >>= maybe mzero return
   getCounts = gets CountMap

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
   pushK adr frm = topAddress >>= (writeAdr adr . Set.singleton  .KKont frm)
   -- | Push a failure continuation on the failure continuatuion stack
   pushF :: FAdr k -> FFrame -> m ()
   pushF adr frm = topFailAddress >>= (writeAdr adr . Set.singleton . FKont frm)
   -- | Pop a continuation frame from the continuation stack
   popK :: (Joinable a, BottomLattice a, MonadBottom m, MonadJoin m) => (KFrame k -> m a) -> m a
   popK f = topAddress >>= lookupAdr >>= joinMapM linkAndExecute  
      where linkAndExecute (KKont frm nxt) = putTopAddress nxt >> f frm
   -- | Pop a continuation frame from the failure continuation stack
   popF :: (Joinable a, BottomLattice a, MonadBottom m, MonadJoin m) => (FFrame -> m a) -> m a
   popF f = topFailAddress >>= lookupAdr >>= joinMapM linkAndExecute  
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
   } deriving (Ord, Eq, Show)
-- | State monad intepretation of the @MonadContinuation@ type class
newtype ContinuationT k m a = ContinuationT (StateT (ContinuationState k) m a)
                          deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer, MonadCache, MonadState (ContinuationState k)) 
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
   -- | Get the current context
   getCtx :: m k
   -- | Change the current context
   putCtx :: k -> m ()

-- | A layered instance of the @MonadSmallstepContext@ type class
instance (Monad m, MonadLayer t, MonadSmallstepContext k m) => MonadSmallstepContext k (t m) where   
   getCtx = upperM getCtx 
   putCtx = upperM . putCtx

-- | A trivial instance of @MonadSmallstepContext@ using a state monad
newtype SmallstepContextT k m a = SmallstepContextT (StateT k m a) 
                           deriving (Applicative, Monad, Functor, MonadCache, MonadState k)
instance (Monad m) => MonadSmallstepContext k (SmallstepContextT k m) where 
   getCtx = get 
   putCtx = put
   
-- | Convenience function for integrating the small-step context with 
-- the existing monad infrastructure. 
--
-- Does the same as @withCtx@ but also changes current context in the 
-- state monad.
withSmallstepCtx :: (Monad m, MonadSmallstepContext k m, CtxM m k) => (k -> m k) -> m a -> m a 
withSmallstepCtx f ma = do 
   k <- f =<< getCtx
   putCtx k 
   withCtx (const k) ma

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
newtype ConfigurationT k v m a = ConfigurationT (ReaderT (Configuration k v) m a) 
      deriving (Applicative, Monad, Functor, MonadTrans, MonadLayer, MonadReader (Configuration k v)) 
instance (Monad m) => MonadConfiguration k v (ConfigurationT k v m) where  
   getK = asks k
   getConfiguration = ask

------------------------------------------------------------
-- K-cfa
------------------------------------------------------------

pushCtx :: MonadConfiguration k v m => e -> [e] -> m [e]
pushCtx e es = do   
   k' <- getK
   return (take k' (e : es))

------------------------------------------------------------
-- Interaction with the model
------------------------------------------------------------

-- | Monad to model an infinite sequence of random values
class MonadInput v m | m -> v where
   -- | Take a value from the infinite random sequence
   randomInput :: m v

-- | A monad to interact with the concolic model, parametrized 
-- by the type of symbolic variable @i@, a program domain @v@, and a 
-- monad @m@
class (SymbolicValue v i) => MonadModel i v m | m -> i v where
   -- | Lookup a symbolic variable from the model, returns only 
   -- the abstract part of the program value.
   lookupModel :: i -> m (Abstract v)
   -- | Puts a new model instead of the old one
   putModel :: Map i (Abstract v) -> m ()

-- | A layered instance of `MonadModel`
instance {-# OVERLAPPABLE #-} (Monad m, MonadModel i v m, SymbolicValue v i, MonadLayer t) => MonadModel i v (t m) where
   lookupModel = upperM . lookupModel
   putModel = upperM . putModel
-- | A trivial instance of the MonadModel based on the state monad
newtype ModelT i v m a = ModelT (StateT (Map i (Abstract v)) m a)
                       deriving (Monad, Applicative, MonadCache, Functor)

instance (SymbolicValue v i, Ord i, MonadBottom m, MonadInput (Abstract v) m) => MonadModel i v (ModelT i v m) where
   lookupModel i = ModelT $ gets (Map.lookup i) >>= maybe (lift randomInput) return
   putModel = ModelT . put

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
                           StoreM' (Map (VAdr k) v) (VAdr k) v m,
                           StoreM' (Map (KAdr k) (KKont k)) (KAdr k) (KKont k) m,
                           -- Non-determinism monad
                           MonadJoin m,
                           -- Allocation monads
                           AllocM m (Label Exp) (KAdr k), 
                           AllocM m (Label Exp) (FAdr k), 
                           AllocM m (Label Exp) SymbolicVariable, 
                           AllocM m (Label Exp) (VAdr k),
                           MonadEscape m,
                           Domain (Esc m) DomainError,
                           -- Context
                           MonadSmallstepContext k m, 
                           CtxM m k,
                           MonadConfiguration k v m,
                           -- Path condition
                           MonadPathCondition SymbolicVariable m v,  
                           FormulaSolver SymbolicVariable m,
                           -- Environment monad
                           EnvM m (VAdr k) (Env k))

------------------------------------------------------------
-- Small-step "conversion"
------------------------------------------------------------

-- | Type class that transforms a monadic computation into its 
-- corresponding resulting small-step state.
class MachineStep k v m s | s -> k v where
   -- | Run the monadic computation and return a small-step machine state
   run :: m (Ctrl v k) -> s
