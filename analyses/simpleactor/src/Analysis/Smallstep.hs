-- | Small-step semantics for abstract concolic execution. 
--
-- It is designed to work with any domain but only implemented 
-- for a specific one. 
module Analysis.Smallstep where

import Syntax.AST
import Data.Map (Map)
import Data.Set (Set)
import qualified Data.Set as Set
import Control.Monad.Reader.Class
import Control.Monad.Reader (ReaderT)
import Control.Monad.Layer (MonadTrans (lift))
import Lattice.Class (PartialOrder (subsumes))
import Lattice.SetLattice ()

------------------------------------------------------------
-- Syntax verification
------------------------------------------------------------

-- | The small-step machine only supports programs written 
-- in the ANF style. The script "racket/run/translate-anf.rkt"
-- should already take care of this, but errors might occur. 
-- This function is more of a sanity check.
isANF :: Exp -> Bool
isANF = undefined

------------------------------------------------------------
-- Value Domain
------------------------------------------------------------

-- | Abstract values
type Val = () -- TODO

-- | Program values
type PVal = () -- TODO

-- | Symbolic variables
type SymVar = () -- TODO

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

-- | Simple addresses based on a source location and a finite context
data Adr = Adr Span [Span]
         deriving (Ord, Eq, Show)

data KAdr = KAdr Span [Span] | Hlt
          deriving (Ord, Eq, Show)

-- | An environment
type Env = Map String Adr

-- | Store
type Sto = Map Adr Val

-- | Path condition
type PC = () -- TODO

-- | A binding is a variable combined with an expression 
-- it needs to be bound to
type Binding = (Ide, Exp)

-- | A model is an assignment from symbolic variables to their values
type Model = Map SymVar PVal

------------------------------------------------------------
-- Monadic context (mostly for convenience)
------------------------------------------------------------

class MonadRandom m where  
   random :: m PVal
instance (Monad m, MonadRandom m , MonadTrans t) => MonadRandom (t m) where 
   random = lift random
instance MonadRandom IO where 
   random = undefined -- TODO

-- | Some context needed for the concolic execution, to be 
-- passed around in a reader monad.
data ConcolicContext = ConcolicContext {
      initialStore :: Sto, 
      initialEnv :: Env, 
      initialExp :: Exp
   }

type SmallstepM m = (MonadRandom m,
                     MonadReader ConcolicContext m)

------------------------------------------------------------
-- State space
------------------------------------------------------------

-- | Abstract control component
data Control = Ev Exp Env | Ap Val 
            deriving (Ord, Eq, Show)

-- | Continuations
data Kont = LetK Ide [Binding] Exp Adr
         deriving (Eq, Ord, Show)

-- | Failure continuations 
data Kontf = Branch PC Adr
           deriving (Eq, Ord, Show)

-- | Continuation store
type KSto = Map KAdr Kont

-- | Failure continuation store
type FSto = Map KAdr Kontf

-- | Abstract machine states
data State = State {
      -- | Control component
      control :: Control, 
      -- | (Local) Store component
      store :: Sto,
      -- | Top of the continuation stack
      top :: KAdr, 
      -- | Local continuation store
      kont :: KSto,
      -- | Top of the failure continuation stack
      topFail :: KAdr, 
      -- | Failure continuation storez
      kontf :: FSto,
      -- | The model
      model :: Model, 
      -- | Path condition
      pc :: PC
   } deriving (Ord, Eq, Show)

------------------------------------------------------------
-- Small-stepping relation
------------------------------------------------------------

step :: SmallstepM m => State -> m (Set State)
step = undefined

------------------------------------------------------------
-- Analysis
------------------------------------------------------------

-- | Collect states until no more states are found
collect :: SmallstepM m => Set State -> m (Set State)
collect ss = undefined

-- | Compute the least fix point assuming that the output of the function 
-- is monotonic.
lfp :: (PartialOrder v, SmallstepM m) => (v -> m v) -> v -> m v
lfp f initial = do 
   nxt <- f initial 
   if subsumes nxt initial && not (subsumes initial nxt) then lfp f nxt else return nxt

inject :: Exp -> State
inject = undefined

runContext :: ReaderT ConcolicContext IO a -> IO a
runContext = undefined

-- | Computes the set of states reachable from @e@
analyze :: Exp -> IO (Set State)
analyze = runContext . lfp collect . Set.singleton . inject
