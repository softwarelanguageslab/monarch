module Analysis.Symbolic.Semantics(eval) where

import Syntax.Scheme
import Domain.Symbolic
import qualified Analysis.Monad as Monad
import qualified Analysis.Scheme.Semantics as Scheme
import Analysis.Symbolic.Monad (SymbolicM, MonadPathCondition(fresh))
import Control.Applicative (liftA2)

eval :: SymbolicM m v => Exp -> m v
eval (App (Var (Ide "fresh" _)) [e] _) = 
   var <$> fresh <*> eval e
eval (App (Var (Ide "fresh" _)) _ _) =
   error "invalid call to fresh"
eval e@(App op opr  _)    = evalApp e op opr
eval e = Scheme.eval e

evalApp :: SymbolicM m v => Exp -> Exp -> [Exp] -> m v
evalApp app op opr =
   uncurry (applyFun app) =<< liftA2 (,) (Monad.eval op) (mapM Monad.eval opr)

applyFun :: SymbolicM m v => Exp -> v -> [v] -> m v
applyFun app op ags = ap op ags <$> Scheme.applyFun app op ags

