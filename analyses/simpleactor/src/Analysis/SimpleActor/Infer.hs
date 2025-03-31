{-# LANGUAGE UndecidableInstances #-}
-- | This module is used to make inferences about certain parts
-- of the program.
module Analysis.SimpleActor.Infer where

import Analysis.Monad (WorkListM, EnvM(..), StoreM(..))
import Control.Lens
import Control.Lens.TH
import Control.Monad.State
import Control.Monad.Join
import Domain.Class
import Domain.Scheme.Store (SchemeAdr)
import qualified Data.Set as Set
import Data.TypeLevel.HMap
import qualified Data.TypeLevel.HMap as HMap
import Domain.Core.BoolDomain.Class
import Lattice.Class
import RIO hiding (join)
import qualified RIO.Map as Map
import Syntax.AST

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

-- | The type of addresses used in this analysis,
-- no context needed as this is a very simple and
-- crude pre-analysis.
type Adr = SchemeAdr Exp ()

-- | The environment used during inferencing
type Env = Map String Adr

-- | An actor is described statically by its environment and
-- expression.
type Actor = (Exp, Env)

-- | Tags of the product in the actor value
data ActorTag = CloTag -- ^ the value is a closure
              | PrmTag -- ^ the value is a primitive
              | TopTag -- ^ the value is something else, but still keeps track of potential closures it contains
               deriving (Ord, Eq, Show)

$(genHKeys ''ActorTag)

-- | Mapping for the abstract actor value product
type M = '[ CloTag ::-> Set (Exp, Env) ]

-- | Very crude approximation of actor values
newtype Value = Value (HMap M) deriving (Ord, Eq, Joinable, PartialOrder, BottomLattice)

-- | Inject a closure into the abstract domain
injectClo :: (Exp, Env) -> Value
injectClo = Value . HMap.singleton @CloTag  . Set.singleton

-- | Type to indicate that the actor value might be something else,
-- with a fallback of which actor values it might contain.
data V = ConstantValue Value | TopValue Value deriving (Ord, Eq)

instance Joinable V where
  join (TopValue v1) (TopValue v2) = TopValue $ join v1 v2
  join (ConstantValue v1) (ConstantValue v2) = ConstantValue $ join v1 v2
  join (TopValue v1) (ConstantValue v2) = TopValue (join v1 v2)
  join (ConstantValue v1) (TopValue v2) = TopValue (join v1 v2)

instance PartialOrder V where
  leq _ (TopValue _) = True
  leq (ConstantValue v1) (ConstantValue v2) = leq v1 v2
  leq _ _ = False

instance TopLattice V where
  top = TopValue bottom

instance Domain V Bool where
  inject = const $ TopValue bottom

-- | For simplicity the @BoolDomain@ implementation for @V@ is always top
instance BoolDomain V where
  boolTop = TopValue bottom
  not = const boolTop
  and = const $ const boolTop
  or  = const $ const boolTop

------------------------------------------------------------
-- Analysis state
------------------------------------------------------------

-- | Inferred information about the program under analysis
data Inferred = Inferred {
  -- | Approximation of the set of actors in a program
  _actors :: Set Actor,
  -- | Approximation of the message sent by a particular actor
  _sends :: Map Actor (Set V),
  -- | Approximation of the messages that an actor could receive
  -- during its lifetime.
  _receives :: Map Actor Pat
} deriving (Eq, Ord)

$(makeLenses ''Inferred)

------------------------------------------------------------
-- Analysis Monad
------------------------------------------------------------

-- | Monad for inferring information about the program
type InferM m = (MonadState Inferred m, EnvM m Adr Env, WorkListM m Actor, StoreM Adr V m, MonadJoin m)

-- | Track that an actor was spawned, track its environment and expression
-- and queue its analysis.
spawn :: InferM m => (Exp, Env) -> m ()
spawn = undefined

-- | Apply a closure 
applyClosure :: Exp -> (Exp, Env) -> [V] -> m V
applyClosure = undefined

-- | Apply a primitive function
applyPrimitive :: Exp -> String -> [V] -> m V
applyPrimitive = undefined

-- | Apply a function (closure or primitive)
apply :: InferM m => Exp -> V -> [V] -> m V
apply caller operator operands = undefined
  -- there are three cases: - the operator is a closure
  --                        - the operator is a primitive  
  --                        - the operator is a top value
  --
  -- the first two cases are handled as in @Analysis.SimpleActor.Semantics@
  -- the last one is handled in that way as well (for the closure and primitive values
  -- embedded in the top value) but also returns @top@

-- | Lookup a variable in the current environment, returns @top@
-- if the variable does not exists in the environment this is to take
-- unimplemented primitives into account.
lookupVar :: InferM m => String -> m V
lookupVar = maybe (return top) lookupAdr <=< (fmap (flip Map.lookup) getEnv <*>) . pure

------------------------------------------------------------
-- Analysis Semantics
------------------------------------------------------------

-- | Inject a literal in the abstract domain, any literal is
-- mapped onto the "top value", only closures have a concrete value.
injectLit :: Lit -> V
injectLit = const $ TopValue bottom

-- | Recursive evaluation function, follows the @Analysis.SimpleActor.Semantics.eval@ mostly
-- but differs in its treatment of pattern matching, conditions and is overall much simpler.
eval :: InferM m => Exp -> m V
eval (Literal lit _)  = return (injectLit lit)
eval lam@(Lam {})     = ConstantValue . injectClo . (lam,) <$> getEnv
eval (App e1 es _)    = undefined
eval (Ite _ e2 e3 _)  = eval e2 <||> eval e3
eval (Spawn e _)      = (spawn . (e,) =<< getEnv) $> top
eval (Terminate _)    = undefined
eval (Receive pats _) = undefined
eval (Match pats bdy _)   = undefined
eval (Letrec bds _ _) = undefined
eval (Parametrize bds e2 _) = undefined
eval (Begin exs _)    = foldM (const eval) top exs
eval (Pair e1 e2 _)   = undefined
eval (Var (Ide x _))  = undefined
eval (DynVar (Ide _ _)) = undefined
eval (Self _) = undefined
-- Ignore all other expressions
eval _ = return top
    
