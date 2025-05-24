-- | Module to convert an EAF program to a SimpleActor program
module Syntax.ErlangToSimpleActor where

import Data.Kind
import Syntax.AST
import qualified Syntax.Erlang.AST as Erl
import Syntax.Span

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

