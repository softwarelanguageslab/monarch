{-# LANGUAGE UndecidableInstances, PolyKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
-- | This module is used to make inferences about certain parts
-- of the program.
module Analysis.SimpleActor.Infer(infer, module Analysis.SimpleActor.Infer.Graph, Inferred(..)) where

import qualified  Analysis.Environment as Environment
import Analysis.SimpleActor.Monad (MonadDynamic(..), runDynamicT)
import Analysis.Monad (WorkListM, EnvM(..), StoreM(..), iterateWL', runEnv, runJoinT, runStoreT, runWithComponentTracking, runWithMapping', runWithWorkList, runWithDependencyTracking, MonadDependencyTracking)
import Analysis.Monad.IntraAnalysis
import Analysis.Monad.Map (MapM)
import qualified Analysis.Monad.Map as MapM
import Analysis.Monad.ComponentTracking (ComponentTrackingM)
import qualified Analysis.Monad.ComponentTracking as ComponentTracking
import Control.Lens
import Control.Monad.State
import Control.Monad.Join
import Data.Kind
import qualified Data.List as List
import Data.Singletons
import Data.Singletons.Sigma
import Domain.Class
import Domain.Scheme.Store (SchemeAdr(..))
import qualified Data.Set as Set
import Data.TypeLevel.HMap hiding (map)
import qualified Data.TypeLevel.HMap as HMap
import Domain.Core.BoolDomain.Class
import Lattice.Class hiding (join)
import qualified Lattice.Class as L
import RIO hiding (view, over)
import qualified RIO.Map as Map
import Syntax.AST
import Text.Printf
import Syntax.Span (spanOf)
import Data.Maybe
import Syntax (SpanOf)
import Control.Monad.Layer
import Control.Monad.Trans.Identity

import Analysis.SimpleActor.Infer.Common
import Analysis.SimpleActor.Infer.Graph
import Analysis.SimpleActor.Infer.Domain
import Analysis.Store (traceStore)

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
  _receives :: Map Actor (Set Pat)
} deriving (Eq, Ord, Show, Generic)

instance NFData Inferred

$(makeLenses ''Inferred)

-- | Initial inference state
initialInferred :: Inferred
initialInferred = Inferred Set.empty Map.empty Map.empty

------------------------------------------------------------
-- Analysis tasks
------------------------------------------------------------

data Task = AnalyzeActor Actor           --  ^ analyze a new actor
          | AnalyzeClosure Clo Dyn Actor -- ^ analyze a function call
          | AnalyzeReceive Clo Dyn Actor -- ^ analyze the a receive block
          deriving (Ord, Eq, Show)


-- | Perform an analysis task
performTask :: (MapM Task V m, InferM m) => Task -> m ()
performTask (AnalyzeActor (Actor (expr, env))) =
  modify (over actors (Set.insert (Actor (expr, env)))) >> local (const $ actorInfo $ Actor (expr, env)) (void (withEnv (const env) (eval expr)))
performTask t@(AnalyzeClosure (expr, env) dyn actor) =
  local (const $ ComponentInfo actor (FnCallNode (expr, env)))
        (withDynamic (const dyn) (withEnv (const env) (eval expr)) >>= MapM.joinWith t)
performTask t@(AnalyzeReceive (expr, env) dyn actor) =
  local (const $ ComponentInfo actor (ReceiveNode (expr, env)))
        (withDynamic (const dyn) (withEnv (const env) (evalReceive expr)) >>= MapM.joinWith t)

-- | Create a task from an initial program expression
injectTask :: Exp -> Task
injectTask = AnalyzeActor . Actor . (, initialEnv)

------------------------------------------------------------
-- Analysis Monad
------------------------------------------------------------

-- | Monadic type class for inference related activities
class MonadInfer m where
  -- | Spawn a new process
  spawnProcess :: Actor -> m V
  -- | Call the given function (assuming that parameters have already been allocated)   
  callClo :: Clo -> m V

-- | Trivial instance of 'MonadInfer' for layered monads
instance {-# OVERLAPPABLE #-} (MonadLayer t, Monad m, MonadInfer m) => MonadInfer (t m) where
  spawnProcess = upperM . spawnProcess
  callClo = upperM . callClo

-- | Key at which the mailboxes are stored in the global MapM
newtype ActorMailboxKey = ActorMailboxKey Actor
                        deriving (Ord, Eq, Show)

-- | Encodes information about the component that is currently under analysis
data ComponentInfo = ComponentInfo {
                    -- | The current actor
                     _self :: Actor,
                    -- |   The current node
                    _node :: N
                   } deriving (Ord, Eq, Show)

actorInfo :: Actor -> ComponentInfo
actorInfo actor = ComponentInfo actor (ActorNode actor)

-- | Monad for inferring information about the program
type InferM m = (MonadState Inferred m,
                 EnvM m Adr Env,
                 StoreM Adr V m,
                 MonadJoin m,
                 MonadReader ComponentInfo m,
                 MonadDynamic Adr m,
                 MonadIO m,
                 MapM ActorMailboxKey V m,
                 MonadInfer m)

-- | Track that an actor was spawned, track its environment and expression
-- and queue its analysis.
spawn :: InferM m => Actor -> m V
spawn act = spawnProcess act $> ConstantValue (injectActor act)

-- | Apply a closure 
applyClosure :: InferM m => Exp -> Clo -> [V] -> m V
applyClosure _ (Lam xs bdy _, env) vs = do
   let adrs = map (`VarAdr` ()) xs
   let nams = map name xs
   let env' = Environment.extends (zip nams adrs) env
   let clo  = (bdy, env')
   callClo clo
applyClosure e _ _ = error $ "not a valid closure at " ++ show (spanOf e)

-- | Register a potential message receive
registerReceive :: InferM m => Pat -> m ()
registerReceive pat = asks _self >>= (\r -> modify (over receives (Map.insertWith L.join r (Set.singleton pat))))

-- | Allocate an address based on the identifier
alloc :: InferM m => Ide -> m Adr
alloc = return . flip VarAdr ()

-- | Register a message send
sendMessage :: InferM m => V -> V -> m V
sendMessage rcv v = mjoinMap (\rcv' -> do
    -- self <- asks _self
    MapM.joinWith (ActorMailboxKey rcv') v
    return top) (getActors (values rcv))

-- | Extract the possible values the current actor can receive
receive :: InferM m => m V
receive = (asks _self >>= MapM.get . ActorMailboxKey) >>= maybe mbottom return

-- | Returns a set of nodes that the given value could be represented by
valueNodes :: V -> Set N
valueNodes = foldMap toNode . HMap.toList . getValue . values
   where  toNode :: BindingFrom M -> Set N
          toNode (SCloTag :&: clos) = Set.map (FnCallNode . first lamBdy) clos
          toNode (SPrmTag :&: _)    = Set.empty
          toNode (SActTag :&: refs) = Set.map ActorNode refs
          lamBdy (Lam _ e _) = e
          lamBdy _ = error "not a lambda expression"

-- | Register a write to the specified memory address and performs the actual write,
-- if the value written is representable by a node in the graph, an edge is added
-- from that graph node to an address node.
registerWriteAdr :: InferM m
                 => Adr
                 -> V
                -> m ()
registerWriteAdr = writeAdr

-- | Register a read from the specified memory address to the current actor or callee
registerReadAdr :: InferM m
                => Adr
                -> m V
registerReadAdr = lookupAdr

------------------------------------------------------------
-- Analysis Semantics
------------------------------------------------------------

-- | Inject a literal in the abstract domain, any literal is
-- mapped onto the "top value", only closures have a concrete value.
injectLit :: Lit -> V
injectLit = const $ TopValue bottom

evalReceive :: InferM m => Exp -> m V
evalReceive (Receive pats _) = do
  message <- receive
  -- Different from receive in @Analysis.SimpleActor.eval@ as
  -- it evaluates all possible branches of the receive and does
  -- not actually consult a mailbox. But it does track the patterns
  -- that the actor could receive.
  mapM_ (registerReceive . fst) pats >> mjoinMap (uncurry (withBindsTop $ topValue message)) pats
evalReceive _ = error "not a receive expression"

-- | Apply a primitive function
applyPrimitive :: InferM m => Exp -> String -> [V] -> m V
applyPrimitive = runPrimitive

-- | Apply a function (closure or primitive)
apply :: InferM m => Exp -> V -> [V] -> m V
apply caller operator operands = case operator of
  -- there are three cases: - the operator is a closure
  --                        - the operator is a primitive  
  --                        - the operator is a top value
  --
  -- the first two cases are handled as in @Analysis.SimpleActor.Semantics@
  -- the last one is handled in that way as well (for the closure and primitive values
  -- embedded in the top value) but also returns @top@
  --
  -- The top value that is produced here contains all the values from the operands,
  -- this is because the assumption is that unimplemented primitives can only return
  -- values either related to their inputs, or completely random values. Hence,
  -- the abstraction is sound and also includes potential closures and actor references.
  ConstantValue v ->   mjoinMap (flip (applyClosure caller) operands) (getClosures v)
                  <||> mjoinMap (flip (applyPrimitive caller) operands) (getPrimitives v)
  TopValue v -> apply caller (ConstantValue v) operands <||> return (TopValue $ L.joins $ map values operands)

-- | Lookup a variable in the current environment, returns @top@
-- if the variable does not exists in the environment this is to take
-- unimplemented primitives into account.
lookupVar :: InferM m => String -> m V
lookupVar = maybe (return top) registerReadAdr <=< (fmap (flip Map.lookup) getEnv <*>) . pure

-- | Extract the variables from the pattern, bind them to top
-- and evaluate the body of the pattern in that environment.
withBindsTop :: InferM m => V -> Pat -> Exp -> m V
withBindsTop topV pat bdy = mapM_ (`registerWriteAdr` topV) adrs >> withExtendedEnv (zip nams adrs) (eval bdy)
   where vars = Set.toList $ patternVariables pat
         nams = map name vars
         adrs = map (`VarAdr` ()) vars


-- | Recursive evaluation function, follows the @Analysis.SimpleActor.Semantics.eval@ mostly
-- but differs in its treatment of pattern matching, conditions and is overall much simpler.
eval :: InferM m => Exp -> m V
eval (Literal lit _)  = return (injectLit lit)
eval lam@(Lam {})     = ConstantValue . injectClo . (lam,) <$> getEnv
eval e@(App e1 es _)  = join $ liftA2 (apply e) (eval e1) (mapM eval es)
eval (Ite _ e2 e3 _)  = eval e2 <||> eval e3
eval (Spawn e _)      = spawn . Actor . (e,) =<< getEnv
eval (Terminate _)    = mbottom -- no interesting behavior
eval ex@(Receive _ _) = evalReceive ex
eval (Match ev pats _)   = do
  -- Ignores the pattern matches but binds all variables
  -- occuring in the pattern to "top".
  matchValue <- eval ev -- evaluate @v@ for its side effects, but ignore its value
  mjoinMap (uncurry (withBindsTop (topValue matchValue))) pats
eval (Letrec bds bdy _) = do
   ads <- mapM (alloc . fst) bds
   let bds' = zip (map (name . fst) bds) ads
   mapM_ (\(ex, adr) -> registerWriteAdr adr =<< withExtendedEnv bds' (eval ex)) (zip (map snd bds) ads)
   withExtendedEnv bds' (eval bdy)
eval (Parametrize bds e2 _) = do
   ads <- mapM (alloc . fst) bds
   let bds' = zip (map (name . fst) bds) ads
   vs <- mapM (eval . snd) bds
   mapM_ (uncurry registerWriteAdr) (zip ads vs)
   withExtendedDynamic bds' (eval e2)
eval (Begin exs _)    = foldM (const eval) top exs
eval (Pair e1 e2 _)   = topValue <$> liftA2 L.join (eval e1) (eval e2)
eval (Var (Ide x _))  = lookupVar x
eval (DynVar (Ide x _)) =
   lookupDynamic x >>= registerReadAdr
eval (Self _)         = return top -- we don't care about self references
-- Ignore all other expressions
-- eval (Trace e _)      = liftIO (print e) >> eval e
eval _                = return top

------------------------------------------------------------
-- Primitives
------------------------------------------------------------

-- | A primitive is a function from the call-site and operands
-- of that function to a value
newtype Prim = Prim (forall m . InferM m => Exp -> [V] -> m V)

-- | List of all available primitives
allPrimitives :: Map String Prim
allPrimitives = Map.fromList [
    ("send^", Prim $ \_ [rcv, msg] -> sendMessage rcv msg)
  ]

-- | Run a primitive given its name
runPrimitive :: InferM m => Exp -> String -> [V] -> m V
runPrimitive e nam vs = maybe (error "no such primitive") (\(Prim p) -> p e vs) (Map.lookup nam allPrimitives)

-- | The initial environment with all its primitives
initialEnv :: Map String Adr
initialEnv = Map.mapWithKey (const . PrrAdr) allPrimitives

initialSto :: Map Adr V
initialSto = Map.fromList $ map (\nam -> (PrrAdr nam, ConstantValue $ injectPrim nam)) (Map.keys allPrimitives)

------------------------------------------------------------
-- Light-weight pre-analysis monad
------------------------------------------------------------

-- | Monad for the light-weight pre-analysis monad
newtype PreAnalysisT m a = PreAnalysisT (IdentityT m a)
                         deriving (Monad, Applicative, Functor, MonadLayer, MonadBottom, MonadJoinable)

instance (Monad m,
          MonadReader ComponentInfo m,
          MapM Task V m,
          MonadDynamic Adr m,
          ComponentTrackingM m Task,
          MonadState Inferred m,
          MonadBottom m
  ) => MonadInfer (PreAnalysisT m) where
   spawnProcess act = ComponentTracking.spawn (AnalyzeActor act)
                  >> modify (over actors (Set.insert act))
                  $> ConstantValue (injectActor act)
   callClo clo      = do
      task <- AnalyzeClosure clo <$> getDynamic <*> asks _self
      ComponentTracking.spawn task
      maybe mbottom return =<< MapM.get task

-- | Run the computation inside the context of a pre-analysis monad
runPreAnalysisT :: PreAnalysisT m a -> m a
runPreAnalysisT (PreAnalysisT ma) = runIdentityT ma


------------------------------------------------------------
-- Analysis instantiation
------------------------------------------------------------

type InterM :: (Type -> Type) -> Constraint
type InterM m = (
      StoreM Adr V m,
      ComponentTrackingM m Task,
      MonadState Inferred m,
      MapM Task V m,
      MapM ActorMailboxKey V m,
      WorkListM m Task,
      MonadDependencyTracking Task Adr m,
      MonadDependencyTracking Task Task m,
      MonadDependencyTracking Task ActorMailboxKey m,
      MonadIO m)

intra :: (MonadReader ComponentInfo m, InterM m) => Task -> m ()
intra t = void $ performTask t
               & runPreAnalysisT
               & runEnv initialEnv
               & runDynamicT initialEnv
               & runJoinT
               & runIntraAnalysis t

inter :: InterM m
      => Exp -- ^ the initial program expression
      -> m ()
inter expr = iterateWL' (injectTask expr) intra
           & flip runReaderT (ComponentInfo actor (ActorNode actor))
      where actor = Actor (expr, initialEnv)

infer :: Exp -> IO Inferred
infer = runWithWorkList @[_] @Task
      . runWithDependencyTracking @Task @Task
      . runWithDependencyTracking @Task @Adr
      . runWithDependencyTracking @Task @ActorMailboxKey
      . runWithMapping' @Task @V
      . runWithMapping' @ActorMailboxKey @V
      . runWithComponentTracking @Task
      . fmap fst . runStoreT @_ @Adr @V initialSto
      . flip execStateT initialInferred
      . inter

------------------------------------------------------------
-- Compositional data-flow graph construction
------------------------------------------------------------

---------------------------------------
-- Semantics instantiation
---------------------------------------




---------------------------------------
-- Entrypoints
---------------------------------------

-- | A component that has to be analyzed compositionally
data Component = ActorCmp Actor (Sto V)
               deriving (Ord, Eq, Show)
  
-- | A summary of the escaping values of the component
data Summary

-- | Derive a set of components that need to be analyzed compositionally
-- from the inferred information of the actor system.
componentsFromInferred :: Inferred         -- ^ the information inferred in the whole program pre-analysis
                       -> Sto V            -- ^ derived store information (from the previous example)
                       -> Set Component
componentsFromInferred inferred sto = Set.map fromActor (_actors inferred)
  where fromActor act@(Actor (expr ,env)) = ActorCmp act (Map.restrictKeys sto (traceStore (envAdrs env) sto))
        envAdrs env = foldMap (Set.singleton . snd) (Map.toList env)

-- | Derive a summary for the given component
summaryOfComponent :: Component -> Summary
summaryOfComponent = undefined


-- Goal is to do something like this: https://dl.acm.org/doi/pdf/10.1145/320385.320400 but for tracking the actor references. The output of this algorithm
-- will be a composable graph of values that are written to addresses or message
-- sends. This information can be used at "face value" to detect emphemeral actors.
