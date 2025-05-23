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


-- | Compile an Erlang expression
compile :: TranspilerM m => Erl.Expr -> m Exp
compile (Erl.Atomic l) = uncurry Literal <$> compileLiteral l
compile (Erl.Var (Erl.Identifier nam s)) = return $ Var (Ide nam s)
compile (Erl.Call operator operands s) =
  App <$> compile operator <*> mapM compile operands <*> pure s
compile (Erl.Block bdy s) =
  Begin <$> mapM compile bdy <*> pure s
compile (Erl.Case {}) = undefined
compile (Erl.Catch {}) = undefined
compile (Erl.If {}) = undefined
compile (Erl.Receive {}) = undefined
compile (Erl.Tuple {})  = undefined
compile (Erl.Cons {}) = undefined
compile (Erl.ModVar mod ident) = undefined
compile _ = error "unsupported Erlang AST node"

