{-# LANGUAGE UndecidableInstances, PolyKinds #-}
{-# LANGUAGE DeriveGeneric #-}
-- | This module is used to make inferences about certain parts
-- of the program.
module Analysis.SimpleActor.Infer where

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
import RIO hiding (over)
import qualified RIO.Map as Map
import Syntax.AST
import Text.Printf
import Syntax.Span (spanOf)

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
newtype Actor = Actor { getActor :: (Exp, Env) } deriving (Ord, Eq, Generic)

instance NFData Actor

instance Show Actor where
  show = show . spanOf . fst . getActor

-- | Type of closures
type Clo = (Exp, Env)


------------------------------------------------------------
-- Domain
------------------------------------------------------------


-- | Tags of the product in the actor value
data ActorTag = CloTag -- ^ the value is a closure
              | PrmTag -- ^ the value is a primitive
              | ActTag -- ^ the value is an actor reference
              | TopTag -- ^ the value is something else, but still keeps track of potential closures it contains
               deriving (Ord, Eq, Show, Generic)

instance NFData ActorTag

$(genHKeys ''ActorTag)

-- | Mapping for the abstract actor value product
type M = '[ CloTag ::-> Set (Exp, Env), PrmTag ::-> Set String, ActTag ::-> Set Actor ]

-- | Very crude approximation of actor values
newtype Value = Value { getValue :: HMap M } deriving (Ord, Eq, Joinable, PartialOrder, BottomLattice, Generic)

instance NFData Value

instance (ForAll ActorTag (AtKey1 Show M)) => Show Value where
   show (Value hm) = List.intercalate "," $ map showElement $ HMap.toList hm
      where showElement :: BindingFrom M -> String
            showElement (key :&: value) =
               printf "%s -> %s" (show $ fromSing key) (withC_ @(AtKey1 Show M) (show value) key)

-- | Extract the set of primitives embedded in the value
getPrimitives :: Value -> Set String
getPrimitives = fromMaybe Set.empty . HMap.get @PrmTag . getValue

-- | Extract the set of closures embedded in the value
getClosures :: Value -> Set (Exp, Env)
getClosures = fromMaybe Set.empty . HMap.get @CloTag . getValue


-- |  Extract the set of actor references from the value
getActors :: Value -> Set Actor
getActors = fromMaybe Set.empty . HMap.get @ActTag . getValue

-- | Inject a closure into the abstract domain
injectClo :: (Exp, Env) -> Value
injectClo = Value . HMap.singleton @CloTag  . Set.singleton

-- | Inject a primitive into the abstract domain
injectPrim :: String -> Value
injectPrim = Value . HMap.singleton @PrmTag . Set.singleton

-- | Inject an actor in the abstract value
injectActor :: Actor -> Value
injectActor = Value . HMap.singleton @ActTag . Set.singleton


-- | Type to indicate that the actor value might be something else,
-- with a fallback of which actor values it might contain.
data V = ConstantValue { values :: Value } | TopValue { values :: Value } deriving (Ord, Eq, Show, Generic)

instance NFData V

instance Joinable V where
  join (TopValue v1) (TopValue v2) = TopValue $ L.join v1 v2
  join (ConstantValue v1) (ConstantValue v2) = ConstantValue $ L.join v1 v2
  join (TopValue v1) (ConstantValue v2) = TopValue (L.join v1 v2)
  join (ConstantValue v1) (TopValue v2) = TopValue (L.join v1 v2)

instance PartialOrder V where
  leq _ (TopValue _) = True
  leq (ConstantValue v1) (ConstantValue v2) = leq v1 v2
  leq _ _ = False

instance TopLattice V where
  top = TopValue bottom

instance Domain V Bool where
  inject = const $ TopValue bottom

-- | For simplicity the 'BoolDomain' implementation for 'V' is always top
instance BoolDomain V where
  boolTop = TopValue bottom
  not = const boolTop
  and = const $ const boolTop
  or  = const $ const boolTop

-- | Converts any value into a top value, retaining the possible
-- abstract values that the top value could take.
topValue :: V -> V
topValue (ConstantValue v) = TopValue v
topValue v = v

-- | An approximation of actors mailboxes
type MB = V

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

data Task = AnalyzeActor Actor | AnalyzeClosure Clo Actor
          deriving (Ord, Eq, Show)

performTask :: InferM m => Task -> m ()
performTask (AnalyzeActor (Actor (expr, env))) = modify (over actors (Set.insert (Actor (expr, env)))) >> local (const $ Actor (expr, env)) (void (withEnv (const env) (eval expr)))
performTask t@(AnalyzeClosure (expr, env) actor) = local (const actor) (withEnv (const env) (eval expr) >>= MapM.joinWith t)

-- | Create a task from an initial program expression
injectTask :: Exp -> Task
injectTask = AnalyzeActor . Actor . (, initialEnv)

------------------------------------------------------------
-- Analysis Monad
------------------------------------------------------------

-- | Key at which the mailboxes are stored in the global MapM
newtype ActorMailboxKey = ActorMailboxKey Actor
                        deriving (Ord, Eq, Show)

-- | Monad for inferring information about the program
type InferM m = (MonadState Inferred m, EnvM m Adr Env, ComponentTrackingM m Task, StoreM Adr V m, MonadJoin m, MonadReader Actor m, MonadDynamic Adr m, MapM Task V m, MonadIO m, MapM ActorMailboxKey V m)

-- | Track that an actor was spawned, track its environment and expression
-- and queue its analysis.
spawn :: InferM m => Actor -> m V
spawn act = ComponentTracking.spawn (AnalyzeActor act) $> ConstantValue (injectActor act)

-- | Apply a closure 
applyClosure :: InferM m => Exp -> Clo -> [V] -> m V
applyClosure _ (Lam xs bdy _, env) vs = do
   let adrs = map (`VarAdr` ()) xs
   let nams = map name xs
   let env' = Environment.extends (zip nams adrs) env
   task <- AnalyzeClosure (bdy, env') <$> ask
   mapM_ (uncurry writeAdr) (zip adrs vs)
   ComponentTracking.spawn task
   maybe mbottom return =<< MapM.get task
applyClosure e _ _ = error $ "not a valid closure at " ++ show (spanOf e)


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
lookupVar = maybe (return top) lookupAdr <=< (fmap (flip Map.lookup) getEnv <*>) . pure

-- | Extract the variables from the pattern, bind them to top
-- and evaluate the body of the pattern in that environment.
withBindsTop :: InferM m => V -> Pat -> Exp -> m V
withBindsTop topV pat bdy = mapM_ (`writeAdr` topV) adrs >> withExtendedEnv (zip nams adrs) (eval bdy)
   where vars = Set.toList $ patternVariables pat
         nams = map name vars
         adrs = map (`VarAdr` ()) vars

-- | Register a potential message receive
registerReceive :: InferM m => Pat -> m ()
registerReceive pat = ask >>= (\r -> modify (over receives (Map.insertWith L.join r (Set.singleton pat))))

-- | Allocate an address based on the identifier
alloc :: InferM m => Ide -> m Adr
alloc = return . flip VarAdr ()

-- | Register a message send
sendMessage :: InferM m => V -> V -> m V
sendMessage rcv v = mjoinMap (\rcv' -> do
    MapM.joinWith (ActorMailboxKey rcv') v
    return top) (getActors (values rcv))

-- | Extract the possible values the current actor can receive
receive :: (MonadBottom m, MonadReader Actor m, MapM ActorMailboxKey V m) => m V
receive = (ask >>= MapM.get . ActorMailboxKey) >>= maybe mbottom return


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
eval e@(App e1 es _)  = join $ liftA2 (apply e) (eval e1) (mapM eval es)
eval (Ite _ e2 e3 _)  = eval e2 <||> eval e3
eval (Spawn e _)      = spawn . Actor . (e,) =<< getEnv
eval (Terminate _)    = mbottom -- no interesting behavior
eval (Receive pats _) = do
  message <- receive
  -- Different from receive in @Analysis.SimpleActor.eval@ as
  -- it evaluates all possible branches of the receive and does
  -- not actually consult a mailbox. But it does track the patterns
  -- that the actor could receive.
  mapM_ (registerReceive . fst) pats >> mjoinMap (uncurry (withBindsTop $ topValue message)) pats
eval (Match ev pats _)   = do
  -- Ignores the pattern matches but binds all variables
  -- occuring in the pattern to "top".
  matchValue <- eval ev -- evaluate @v@ for its side effects, but ignore its value
  mjoinMap (uncurry (withBindsTop (topValue matchValue))) pats
eval (Letrec bds bdy _) = do
   ads <- mapM (alloc . fst) bds
   let bds' = zip (map (name . fst) bds) ads
   mapM_ (\(ex, adr) -> writeAdr adr =<< withExtendedEnv bds' (eval ex)) (zip (map snd bds) ads)
   withExtendedEnv bds' (eval bdy)
eval (Parametrize bds e2 _) = do
   ads <- mapM (alloc . fst) bds
   let bds' = zip (map (name . fst) bds) ads
   vs <- mapM (eval . snd) bds
   mapM_ (uncurry writeAdr) (zip ads vs)
   withExtendedDynamic bds' (eval e2)
eval (Begin exs _)    = foldM (const eval) top exs
eval (Pair e1 e2 _)   = topValue <$> liftA2 L.join (eval e1) (eval e2)
eval (Var (Ide x _))  = lookupVar x
eval (DynVar (Ide x _)) =
   lookupDynamic x >>= lookupAdr
eval (Self _)         = return top -- we don't care about self references
-- Ignore all other expressions
eval (Trace e _)      = liftIO (print e) >> eval e
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

intra :: (MonadReader Actor m, InterM m) => Task -> m ()
intra t = void $ performTask t
                & runEnv initialEnv
                & runDynamicT initialEnv
                & runJoinT
                & runIntraAnalysis t

inter :: InterM m
      => Exp -- ^ the initial program expression
      -> m ()
inter expr = iterateWL' (injectTask expr) intra
           & flip runReaderT (Actor (expr, initialEnv))


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
