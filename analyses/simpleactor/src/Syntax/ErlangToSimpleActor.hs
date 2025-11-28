-- | Module to convert an EAF program to a SimpleActor program
{-# LANGUAGE PackageImports #-}
module Syntax.ErlangToSimpleActor where

import Data.Kind
import Data.Sequence
import Syntax.AST
import qualified Syntax.Erlang.AST as Erl
import Syntax.Span
import qualified Data.List as List
import Data.Map (Map)
import qualified Data.Map as Map
import qualified Data.Set as Set
import "maf2-analysis" Data.Graph
import qualified "maf2-analysis" Data.Graph as Graph
import Data.Maybe
import Control.Monad.Reader.Class
import Control.Monad.Reader
import qualified Debug.Trace as Debug

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type Sequence = Seq

------------------------------------------------------------
-- Compilation monad
------------------------------------------------------------

-- | Set of constraints corresponding to the compilation context
type TranspilerM m = (Monad m, MonadReader String m) :: Constraint

runTranspiler :: String -> Reader String a -> a
runTranspiler = flip runReader

------------------------------------------------------------
-- Compilation of body and expressions
------------------------------------------------------------


-- | Compile a body
compileBody :: TranspilerM m => Erl.Body -> m Exp
compileBody bdy@(x:_) = Begin <$> mapM compile bdy <*> pure (spanOf x)
compileBody _ = error "cannot compile empty body"

-- | Compile an Erlang literal
compileLiteral :: TranspilerM m => Erl.Literal -> m (Lit, Span)
compileLiteral (Erl.AtomLit nam s)  = return (Symbol nam, s)
compileLiteral (Erl.CharLit char s) = return (Character char, s)
compileLiteral (Erl.FloatLit {})   = return undefined
compileLiteral (Erl.IntLit i s)     = return (Num i, s)
compileLiteral (Erl.StrLit str s)   = return (String str, s)
compileLiteral (Erl.NilLit s)       = return (Nil, s)


-- | Compile an Erlang clause
compileClause :: TranspilerM m => Erl.Clause -> m (Pat, Exp)
compileClause (Erl.SimpleClause pats [] bdy) =
      liftA2 (,) (consify <$> mapM compilePat pats) (compileBody bdy)
  where compilePat (Erl.AtomicPat lit) = ValuePat . fst <$> compileLiteral lit
        compilePat (Erl.VariablePat (Ide nam s)) = return (IdePat (Ide nam s))
        compilePat (Erl.ConsPat pat1 pat2) = liftA2 PairPat (compilePat pat1) (compilePat pat2)
        compilePat _ = error "unsupported pattern"
        consify = foldr PairPat (ValuePat Nil)
compileClause (Erl.SimpleClause {}) = error "clauses with guards are currently not supported"

-- | Compîle a list of clauses into a single match expression on the given expression
compileClauses :: TranspilerM m => [Erl.Clause] -> m [(Pat, Exp)]
compileClauses = mapM compileClause

-- | Compile an Erlang expression
compile :: TranspilerM m => Erl.Expr -> m Exp
compile (Erl.Atomic l) = uncurry Literal <$> compileLiteral l
compile (Erl.Var (Ide nam s) arity) = return $ Var (Ide nam' s)
  where nam' = nam ++ maybe "" (("/" ++) . show) arity
compile (Erl.Call operator operands s) =
    App <$> compile operator <*> (List.singleton . consify <$> mapM compile operands) <*> pure s
  where consify :: [Exp] -> Exp
        consify = foldr (\a b -> Pair a b (spanOf a)) (Literal Nil s)
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
compile (Erl.ModVar (Ide moduleName _) (Ide nam s) arity) =
  return $ Var (Ide (moduleName ++ ":" ++ nam ++ maybe "" (("/" ++) . show) arity) s)
compile _ = error "unsupported Erlang AST node"

------------------------------------------------------------
-- Graph manipulation of 'ModuleDependencies'
------------------------------------------------------------

toSimpleGraph :: Erl.ModuleDependencies -> SimpleGraph String ()
toSimpleGraph = SimpleGraph . Map.map (Set.map (,()))  . Erl.moduleDependencies

------------------------------------------------------------
-- Compîlation of declarations
------------------------------------------------------------

-- | A partial function to compile declarations to expressions
compileDeclaration :: TranspilerM m => Erl.Declaration -> m (Maybe (Ide, Exp))
compileDeclaration (Erl.Function (Erl.FunctionIdentifier nam arity s) clauses _) = do
    moduleName <- ask
    let ident' = moduleName ++ ":" ++ nam ++ "/" ++ show arity
    clauses' <- compileClauses clauses
    return $ Just (Ide ident' s, Lam [Ide "args" s] (Match (Var (Ide "args" s)) clauses' s) s)
compileDeclaration _ = return Nothing

------------------------------------------------------------
-- Compilation of modules
------------------------------------------------------------

-- | Synthetic span for the main function call
entrySpan :: Span
entrySpan = Span "main" entryPos entryPos
  where entryPos = Position (-1) (-1)

-- | Compile the given list of modules, using the dependency graph to determine
-- the order of definition
compileModules :: Erl.Modules            -- ^ Erlang modules that need to be compiled
               -> Erl.ModuleDependencies -- ^ The dependency graph
               -> String                 -- ^ the name of the "entry" module
               -> String                 -- ^ the name of the "entry" function
               -> Exp                    -- ^ A SimpleActor expression
compileModules modules dependencies entryModule entryFn =
    Letrec orderedBindings (App (Var $ Ide entryFn' entrySpan) [Literal Nil entrySpan] entrySpan) entrySpan
  where moduleOrder = Debug.traceShowId $ Graph.topSort (toSimpleGraph dependencies)
        moduleBindings :: Map String [(Ide, Exp)]
        moduleBindings = Map.mapWithKey (\k -> foldMap (collectDecl k) . Erl.moduleDeclarations . Erl.erlangModule) $ Erl.allModules modules
        collectDecl :: String -> Erl.Declaration -> [(Ide, Exp)]
        collectDecl prefix = maybe [] List.singleton  . runTranspiler prefix . compileDeclaration
        orderedBindings :: [(Ide, Exp)]
        orderedBindings = foldMap (fromMaybe [] . flip Map.lookup moduleBindings) moduleOrder
        entryFn' = entryModule ++ ":" ++ entryFn ++ "/0"



