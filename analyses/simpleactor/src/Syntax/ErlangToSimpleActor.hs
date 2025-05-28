-- | Module to convert an EAF program to a SimpleActor program
module Syntax.ErlangToSimpleActor where

import Control.Monad.Cond
import Control.Monad.State
import Control.Monad.Error.Class
import Control.Lens hiding ((|>), children)
import Data.Either
import Data.Kind
import Data.List (find)
import Data.Set (Set)
import Data.Map (Map)
import qualified Data.Map as Map
import qualified Data.Set as Set
import Data.Maybe (fromMaybe)
import Data.Sequence
import qualified Data.Sequence as Sequence
import Syntax.AST
import qualified Syntax.Erlang.AST as Erl
import Syntax.Span
import GHC.Exts

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type Sequence = Seq

------------------------------------------------------------
-- Module graphs
------------------------------------------------------------

-- | A loaded Erlang module
data LoadedModule = LoadedModule {
      name      :: String,
      exports   :: [Erl.FunctionIdentifier],
      imports   :: [Erl.FunctionIdentifier],
      functions :: [Erl.Function]
  } deriving (Ord, Eq, Show)

-- | A graph of Erlang modules
data ModuleGraph = ModuleGraph {
    -- | Mapping from module names to loaded modules
    nodes :: Map String (Set LoadedModule),
    -- | Edge list, between node names
    edges :: Map String (Set String)
  } deriving (Ord, Eq, Show)

-- | Return the children of the given node
children :: String -> ModuleGraph -> Set String
children node = fromMaybe Set.empty . Map.lookup node  . edges

-- | Returns the set of nodes in the graph
allNodes :: ModuleGraph -> Set String
allNodes = Set.fromList . fmap fst . Map.toList . nodes

-- | Computes the in-degrees of the nodes in the graph
inDegrees :: ModuleGraph -> Map String Int
inDegrees = Map.map Set.size . edges

------------------------------------------------------------
-- Topological sorting
------------------------------------------------------------

-- | Encodes the state of the BFS traversal (i.e., queues, visited set, ..)
data BfsState = BfsState {
      _visited :: Map String Bool,
      _queue :: Sequence String,
      _order :: [String]
  }

$(makeLenses ''BfsState)

type MonadBfs m = (MonadState BfsState m, MonadError String m) 

-- | Check whether the given node has been visited
isVisited :: MonadBfs m => String -> m Bool
isVisited node = gets (fromMaybe False . Map.lookup node . _visited)

-- | Mark the given node as visited
markVisited :: MonadBfs m => String -> m ()
markVisited node = modify (over visited (Map.insert node True))

-- | Queue the given node
queueNode :: MonadBfs m => String -> m ()
queueNode node = modify (over queue (|> node))

-- | Checks whether the queue is empty
queueEmpty :: MonadBfs m => m Bool
queueEmpty = gets (Sequence.null . _queue)

-- | Pop the given node from the stack
popNode :: MonadBfs m => m String
popNode = gets (popEl . _queue) <* modify (over queue popSeq)
  where popEl (el :<| _) = el
        popSeq (_ :<| queue') = queue'

-- | Push a node in the order
pushNode :: MonadBfs m => String -> m ()
pushNode node = modify (over order (node:))

-- | The initial state for the BFS algorithm
initialBfsState :: String -> BfsState
initialBfsState initial = BfsState Map.empty (Sequence.singleton initial) [initial]

-- | Run a BFS on the given graph for the purpose of topologically
-- sorting the graph, the result of this BFS is a list of topologically sorted modules
bfs :: MonadBfs m => ModuleGraph -> m ()
bfs g = ifM queueEmpty
        {- then -} (return ())
        {- else -} $ do
          node <- popNode
          ifM (isVisited node)
          -- edge to already visited, which means a cycle
            (throwError "graph contains cycles, cannot topsort")
            (do  mapM_ queueNode (children node g)
                 markVisited node
                 pushNode node
                 bfs g)
              
-- | Compute a topological sorting of the Erlang module graph
topSort :: ModuleGraph -> [String]
topSort g = _order $ either error id $ execStateT (bfs g) (initialBfsState initialNode)
  where initialNode = fst $ fromMaybe (error "no initial node found") $ find ((==0) . snd) (Map.toList (inDegrees g)) -- an initial node has in-degree zero

------------------------------------------------------------
-- Resolving Import and Exports in Modules
------------------------------------------------------------

type MonadResolve m = (MonadIO m, MonadError String m)

findModuleInPath :: MonadResolve m => String -> [FilePath] -> m Erl.Module
findModuleInPath = undefined

-- | Collect the exports and imports for all modules in the given
-- list. Also searches the given Erlang path for modules listed in the imports.
loadModules :: MonadResolve m 
            => [Erl.Module] -- ^ initial set of modules
            -> [FilePath]   -- ^ search path for module resolution
            -> m ModuleGraph
loadModules = undefined

-- Resolves all modules and returns a topological sorting consistent
-- with export-edges.
resolve :: [Erl.Module]
        -> [FilePath]
        -> IO [LoadedModule]
resolve = undefined        

------------------------------------------------------------
-- Compilation of body and expressions
------------------------------------------------------------

-- | Set of constraints corresponding to the compilation context
type TranspilerM m = (Monad m) :: Constraint

-- | Compile a body
compileBody :: TranspilerM m => Erl.Body -> m Exp
compileBody bdy@(x:xs) = Begin <$> mapM compile bdy <*> pure (spanOf x)

-- | Compile an Erlang literal
compileLiteral :: TranspilerM m => Erl.Literal -> m (Lit, Span)
compileLiteral (Erl.AtomLit nam s)  = return (Symbol nam, s)
compileLiteral (Erl.CharLit char s) = return (Character char, s)
compileLiteral (Erl.FloatLit f s)   = return undefined
compileLiteral (Erl.IntLit i s)     = return (Num i, s)
compileLiteral (Erl.StrLit str s)   = return (String str, s)
compileLiteral (Erl.NilLit s)       = return (Nil, s)


-- | Compile an Erlang clause
compileClause :: TranspilerM m => Erl.Clause -> m (Pat, Exp)
compileClause (Erl.SimpleClause pat [] bdy) =
      liftA2 (,) (compilePat pat) (compileBody bdy)
  where compilePat (Erl.AtomicPat lit) = ValuePat . fst <$> compileLiteral lit 
        compilePat (Erl.VariablePat (Erl.Identifier nam s)) = return (IdePat (Ide nam s))
        compilePat (Erl.ConsPat pat1 pat2) = liftA2 PairPat (compilePat pat1) (compilePat pat2)
        compilePat _ = error "unsupported pattern"     
compileClause (Erl.SimpleClause {}) = error "clauses with guards are currently not supported"

-- | Compile an Erlang expression
compile :: TranspilerM m => Erl.Expr -> m Exp
compile (Erl.Atomic l) = uncurry Literal <$> compileLiteral l
compile (Erl.Var (Erl.Identifier nam s)) = return $ Var (Ide nam s)
compile (Erl.Call operator operands s) =
  App <$> compile operator <*> mapM compile operands <*> pure s
compile (Erl.Block bdy s) =
  Begin <$> mapM compile bdy <*> pure s
compile (Erl.Case expr clauses s) =
  Match <$> compile expr <*> mapM compileClause clauses <*> pure s
compile (Erl.Catch {}) = undefined
compile (Erl.If {}) = undefined
compile (Erl.Receive clauses _after s) =
  -- TODO: add support for after expressions
  Receive <$> mapM compileClause clauses <*> pure s
compile (Erl.Tuple exs s)  =
  foldr (\x xs -> Pair x xs (spanOf x)) (Literal Nil s) <$> mapM compile exs
compile (Erl.Cons car cdr s) =
  Pair <$> compile car <*> compile cdr <*> pure s
compile (Erl.ModVar mod ident) = undefined
compile _ = error "unsupported Erlang AST node"

