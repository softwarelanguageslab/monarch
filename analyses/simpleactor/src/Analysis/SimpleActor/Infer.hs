{-# LANGUAGE UndecidableInstances, PolyKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
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
import RIO hiding (view, over)
import qualified RIO.Map as Map
import Syntax.AST
import Text.Printf
import Syntax.Span (spanOf)
import Data.Maybe
import Syntax (SpanOf)

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

-- | The type of addresses used in this analysis,
-- no context needed as this is a very simple and
-- crude pre-analysis.
type Adr = SchemeAdr Exp ()

-- | The environment used during inferencing
type Env = Map String Adr

-- | Type of the dynamic environment
type Dyn = Map String Adr

-- | An actor is described statically by its environment and
-- expression.
newtype Actor = Actor { getActor :: (Exp, Env) } deriving (Ord, Eq, Generic)

instance NFData Actor

instance Show Actor where
  show = show . spanOf . fst . getActor

-- | Type of closures
type Clo = (Exp, Env)


------------------------------------------------------------
-- Graph
------------------------------------------------------------

-- | Nodes of the graph
data N = ActorNode Actor -- ^ a node that represents an actor (and also its reference)
       | FnCallNode Clo  -- ^ node representing a function call (or closure)
       | AdrNode Adr     -- ^ node representing an address in the store
       | ReceiveNode Clo -- ^ node representing receives
       deriving (Ord, Eq, Show, Generic)

instance SpanOf N where
  spanOf (ActorNode (Actor (e, _))) = spanOf e
  spanOf (FnCallNode (e, _)) = spanOf e
  spanOf (AdrNode adr) = spanOf adr
  spanOf (ReceiveNode (e, _)) = spanOf e

instance NFData N

-- | Edges of the graph
data E = SpawnEdge      -- ^ an edge that goes from actor a to actor b whenever a spawns b
       | SendEdge       -- ^ send a message 
       | CallEdge       -- ^ add a call edge
       | WriteEdge      -- ^ write a value to an address
       | LookupEdge     -- ^ read a value from the given address
       | ReceiveEdge    -- ^ edge that leads to a receive block
       deriving (Ord, Eq, Show, Generic)

instance NFData E

-- | Graph representation as an adjecency list
data Graph = G { n :: Set N, e :: Map N (Set (N, E)) } deriving (Ord, Eq, Show, Generic)

-- | Create an empty graph
emptyGraph :: Graph
emptyGraph = G Set.empty Map.empty

instance NFData Graph


-- | Add a new node to the graph (if does not already exist)
addNode :: N -> Graph -> Graph
addNode n' g@G { .. } = g { n = Set.insert n' n }

-- | Add an edge to the graph with the given label
addEdge :: E -> N -> N -> Graph -> Graph
addEdge lbl start end g@G{ .. } = g { e = Map.insertWith Set.union start (Set.singleton (end, lbl)) e }

-- | Add a 'Send' edge between the given nodes
addSend :: N -> N -> Graph -> Graph
addSend = addEdge SendEdge

-- | Add a 'Spawn' edge between the given nodes
addSpawn :: N -> N -> Graph -> Graph
addSpawn = addEdge SpawnEdge

-- | Add a 'Call' edge between the given nodes
addCall :: N -> N -> Graph -> Graph
addCall = addEdge CallEdge

-- | Add a 'Write' edge between the given nodes
addWrite :: N -> N -> Graph -> Graph
addWrite = addEdge WriteEdge

-- | Add a 'Lookup' edge between the given nodes
addLookup :: N -> N -> Graph -> Graph
addLookup = addEdge LookupEdge

-- | Generate a dot representation of the graph
toDot :: Graph -> String
toDot g = "digraph G { " ++ nodes ++ ";" ++ edges ++ "}"
  where nodeList = Set.toList (n g)
        -- | Attach a label (numerical index) to the node
        label n = fromMaybe (0 :: Integer) $ Map.lookup n (Map.fromList (zip nodeList [1..]))
        labelStr n = "n" ++ show (label n)
        -- | The string representation of the nodes includded in the graph
        nodes = List.intercalate ";\n" $ map printNode nodeList
        edges = List.intercalate ";\n" $ map (uncurry (\k -> List.intercalate ";" . Set.toList . Set.map (printEdge k))) (Map.toList (e g))
        printNode n = labelStr n ++ "[label = \"" ++ show (spanOf n) ++ "\", color = \"" ++ colorNode n ++ "\"]"
        printEdge start (end, tpy) = labelStr start ++ " -> " ++ labelStr end ++ "[label = \"" ++ show tpy ++ "\"]"
        colorNode = \case ActorNode {} -> "blue"
                          FnCallNode {} -> "green"
                          AdrNode {} -> "red"
                          ReceiveNode {} -> "orange"

------------------------------------------------------------
-- Domain
------------------------------------------------------------


-- | Tags of the product in the actor value
data ActorTag = CloTag -- ^ the value is a closure
              | PrmTag -- ^ the value is a primitive
              | ActTag -- ^ the value is an actor reference
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
  _receives :: Map Actor (Set Pat),
  -- | Graph containing information about the actor system
  _graph :: Graph
} deriving (Eq, Ord, Show, Generic)

instance NFData Inferred


$(makeLenses ''Inferred)

-- | Initial inference state
initialInferred :: Inferred
initialInferred = Inferred Set.empty Map.empty Map.empty emptyGraph

------------------------------------------------------------
-- Analysis tasks
------------------------------------------------------------

data Task = AnalyzeActor Actor           --  ^ analyze a new actor
          | AnalyzeClosure Clo Dyn Actor -- ^ analyze a function call
          | AnalyzeReceive Clo Dyn Actor -- ^ analyze the a receive block
          deriving (Ord, Eq, Show)


-- | Perform an analysis task
performTask :: InferM m => Task -> m ()
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
                 ComponentTrackingM m Task,
                 StoreM Adr V m,
                 MonadJoin m,
                 MonadReader ComponentInfo m,
                 MonadDynamic Adr m,
                 MapM Task V m,
                 MonadIO m,
                 MapM ActorMailboxKey V m)

-- | Track that an actor was spawned, track its environment and expression
-- and queue its analysis.
spawn :: InferM m => Actor -> m V
spawn act =  ComponentTracking.spawn (AnalyzeActor act)
          >> modify (over graph (addNode $ ActorNode act))
          >> (asks _self >>= (\self -> modify (over graph (addSpawn (ActorNode self) (ActorNode act)))))
          $> ConstantValue (injectActor act)

-- | Apply a closure 
applyClosure :: InferM m => Exp -> Clo -> [V] -> m V
applyClosure _ (Lam xs bdy _, env) vs = do
   let adrs = map (`VarAdr` ()) xs
   let nams = map name xs
   let env' = Environment.extends (zip nams adrs) env
   let clo  = (bdy, env')
   modify (over graph (addNode (FnCallNode clo)))
   registerCallEdge clo
   task <- AnalyzeClosure clo <$> getDynamic <*> asks _self
   mapM_ (uncurry registerWriteAdr) (zip adrs vs)
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
lookupVar = maybe (return top) registerReadAdr <=< (fmap (flip Map.lookup) getEnv <*>) . pure

-- | Extract the variables from the pattern, bind them to top
-- and evaluate the body of the pattern in that environment.
withBindsTop :: InferM m => V -> Pat -> Exp -> m V
withBindsTop topV pat bdy = mapM_ (`registerWriteAdr` topV) adrs >> withExtendedEnv (zip nams adrs) (eval bdy)
   where vars = Set.toList $ patternVariables pat
         nams = map name vars
         adrs = map (`VarAdr` ()) vars

-- | Register a potential message receive
registerReceive :: InferM m => Pat -> m ()
registerReceive pat = asks _self >>= (\r -> modify (over receives (Map.insertWith L.join r (Set.singleton pat))))

-- | Allocate an address based on the identifier
alloc :: InferM m => Ide -> m Adr
alloc = return . flip VarAdr ()

-- | Register a message send
sendMessage :: InferM m => V -> V -> m V
sendMessage rcv v = mjoinMap (\rcv' -> do
    self <- asks _self
    modify (over graph (addSend (ActorNode self) (ActorNode rcv')))
    MapM.joinWith (ActorMailboxKey rcv') v
    return top) (getActors (values rcv))

-- | Extract the possible values the current actor can receive
receive :: InferM m => m V
receive = (asks _self >>= MapM.get . ActorMailboxKey) >>= maybe mbottom return


-- | Registers a call edge from the current closure (if one is available)
-- to the call target.
registerCallEdge :: InferM m
                 => Clo  -- ^ the call target
                 -> m ()
registerCallEdge target = (\source -> modify (over graph (addCall source (FnCallNode target)))) =<< asks _node

-- | Registers a receive edge from the current node to the receive block
registerReceiveEdge :: InferM m => Clo -> m ()
registerReceiveEdge target = (\source -> modify (over graph (addEdge ReceiveEdge source (ReceiveNode target)))) =<< asks _node


-- | Returns a set of nodes that the given value could be represented by
valueNodes :: V -> Set N
valueNodes = foldMap toNode . HMap.toList . getValue . values
   where  toNode :: BindingFrom M -> Set N
          toNode (SCloTag :&: clos) = Set.map FnCallNode clos
          toNode (SPrmTag :&: _)    = Set.empty
          toNode (SActTag :&: refs) = Set.map ActorNode refs

-- | Register a write to the specified memory address and performs the actual write,
-- if the value written is representable by a node in the graph, an edge is added
-- from that graph node to an address node.
registerWriteAdr :: InferM m
                 => Adr
                 -> V
                -> m ()
registerWriteAdr adr v = do
  modify (over graph $ addNode (AdrNode adr))
  mapM_ (\n -> modify (over graph (addWrite n (AdrNode adr) . addNode n))) (valueNodes v)
  writeAdr adr v

-- | Register a read from the specified memory address to the current actor or callee
registerReadAdr :: InferM m
                => Adr
                -> m V
registerReadAdr adr =
    asks _node
    >>= (modify . over graph . addLookup (AdrNode adr))
    >>  lookupAdr adr



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

-- | Recursive evaluation function, follows the @Analysis.SimpleActor.Semantics.eval@ mostly
-- but differs in its treatment of pattern matching, conditions and is overall much simpler.
eval :: InferM m => Exp -> m V
eval (Literal lit _)  = return (injectLit lit)
eval lam@(Lam {})     = ConstantValue . injectClo . (lam,) <$> getEnv
eval e@(App e1 es _)  = join $ liftA2 (apply e) (eval e1) (mapM eval es)
eval (Ite _ e2 e3 _)  = eval e2 <||> eval e3
eval (Spawn e _)      = spawn . Actor . (e,) =<< getEnv
eval (Terminate _)    = mbottom -- no interesting behavior
eval ex@(Receive _ _) = do
  clo <- (ex,) <$> getEnv
  task <- AnalyzeReceive clo <$> getDynamic <*> asks _self
  modify (over graph (addNode (ReceiveNode clo)))
  registerReceiveEdge clo
  ComponentTracking.spawn task
  maybe mbottom return =<< MapM.get task

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
