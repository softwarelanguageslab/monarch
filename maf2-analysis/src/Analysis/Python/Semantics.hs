{-# OPTIONS_GHC -Wno-unused-matches #-}
module Analysis.Python.Semantics where

import Control.Monad hiding (void, mzero)
import Syntax.Python
import Analysis.Monad (updateAdr, writeAdr, lookupAdr)
import Analysis.Python.Monad
import Analysis.Python.Primitives
import qualified Analysis.Monad as M
import Analysis.Semantics
import Domain hiding (Dictionary)
import Domain.Python
import Control.Monad.Join
import qualified Domain.Python.ClassDomain as O
import Data.Functor ((<&>))

-- | Throws an error that the operation must still be implemented
todo :: String -> a
todo = error . ("todo: "++)

-- | Evaluate all top-level statements in the given module
eval :: (PyM m v a) => Stmt a Micro -> m v
eval = M.eval

-- | Evaluate a single statement
evalStm :: forall m v a . (PyM m v a) => Stmt a Micro -> m v
evalStm (Assg _ to expr)                = (assignTo to =<< M.eval expr) >> return none
evalStm (Let _ vrs stm)               = do
   adrs <- mapM allocVar vrs
   withExtendedEnv (zip (map (ideName . lexIde) vrs) adrs) (M.eval stm)
evalStm (Return _ expr _)               = maybe (returnWith none) (returnWith <=< M.eval) expr
evalStm (Break _ _)                     = todo "eval break"
evalStm (Continue _ _)                  = todo "eval continue"
evalStm (Conditional _ grds els _ )     = evalIf grds els               -- if-elif-else
evalStm (StmtExp _ e _)                 = do
   M.eval e >> pure void
evalStm stmt = error "unrecognized statement"

-- | Assign the given value to the given left-hand-side expression
assignTo :: PyM m v a => Lhs a Micro -> v -> m ()
assignTo = undefined
-- assignTo (Field e nam _) v = M.eval e >>= derefObjPtr (\adr -> updateAdr adr . O.set (string (ideName nam)) v)

-- | Evaluate and if-elif sequence that has an optional `else`
evalIf :: (PyM m v a) => [(Exp a Micro, Stmt a Micro)] -> Stmt a Micro -> m v
evalIf [] els = M.eval els
evalIf ((cnd,tru):grds) els =
   cond (evalExp cnd) (M.eval tru) (evalIf grds els)

-- | Evaluate a single expression
evalExp :: (PyM m v a) => Exp a Micro -> m v
-- | Lambda's
evalExp (Lam prs stmt _ _) =
   getEnv <&> fun prs stmt
-- | Variables
evalExp (Var ide) = do
   lookupEnv (ideName $ lexIde ide) >>= lookupAdr
-- literals
evalExp (Literal l) = evalLiteral l
-- compound expressions
evalExp (Call fun arg a) = do
   evaluatedFun <- evalExp fun
   -- todo: variable argument functions
   evaluatedAgs <- mapM evalArg arg
   withProc (either (applyPrim a evaluatedAgs) (applyProc evaluatedAgs)) evaluatedFun
evalExp ex = error "unsupported expression"

-- | Evaluate literal expressions
evalLiteral :: PyM m v a => Lit a Micro -> m v
evalLiteral (Bool b _)    = return $ inject b
evalLiteral (Integer i _) = return $ inject i
evalLiteral _             = todo "support other literals"


-- | Applies a primitive
applyPrim :: PyM m v a => a -> [v] -> String -> m v
applyPrim ex ags nam = applyPrimitive nam ex ags

-- | Applies a procedure

applyProc :: (PyM m v a) => [v] -> Fun a (Env v) -> m v
applyProc ags (prs, bdy, env) = withEnv (const env) $ do
   bindings <- zipWithM bindPar prs ags
   withExtendedEnv bindings $ call bdy

bindPar :: (PyM m v a) => Par a Micro -> v -> m (String, PyAdr m)
bindPar = undefined
-- bindPar p@(Param id@(Ident nam _) _ _ _) v = do
--    adr <- allocVar (Ide id)
--    writeAdr adr v
--    (,) nam <$> allocVar (Ide id)
-- bindPar _ _ = error "unsupported parameter type"

-- | Evaluates a single argument
evalArg :: (PyM m v a) => Arg a Micro -> m v
evalArg (PosArg e _) = M.eval e
evalArg _ = error "unsupported argument type"
