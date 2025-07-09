-- | Module to convert an EAF program to a SimpleActor program
module Syntax.ErlangToSimpleActor where

import Data.Kind
import Data.Sequence
import Syntax.AST
import qualified Syntax.Erlang.AST as Erl
import Syntax.Span
import qualified Data.List as List

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

type Sequence = Seq

------------------------------------------------------------
-- Compilation of body and expressions
------------------------------------------------------------

-- | Set of constraints corresponding to the compilation context
type TranspilerM m = (Monad m) :: Constraint

-- | Compile a body
compileBody :: TranspilerM m => Erl.Body -> m Exp
compileBody bdy@(x:_) = Begin <$> mapM compile bdy <*> pure (spanOf x)
compileBody _ = error "cannot compile empty body"

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
compileClause (Erl.SimpleClause pats [] bdy) =
      liftA2 (,) (consify <$> mapM compilePat pats) (compileBody bdy)
  where compilePat (Erl.AtomicPat lit) = ValuePat . fst <$> compileLiteral lit 
        compilePat (Erl.VariablePat (Ide nam s)) = return (IdePat (Ide nam s))
        compilePat (Erl.ConsPat pat1 pat2) = liftA2 PairPat (compilePat pat1) (compilePat pat2)
        compilePat _ = error "unsupported pattern"
        consify = foldr PairPat (ValuePat Nil) 
compileClause (Erl.SimpleClause {}) = error "clauses with guards are currently not supported"

-- | Compile an Erlang expression
compile :: TranspilerM m => Erl.Expr -> m Exp
compile (Erl.Atomic l) = uncurry Literal <$> compileLiteral l
compile (Erl.Var (Ide nam s)) = return $ Var (Ide nam s)
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
compile (Erl.ModVar mod ident) = undefined
compile _ = error "unsupported Erlang AST node"

