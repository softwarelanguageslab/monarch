module Analysis.Symbolic.Semantics(eval) where

import Syntax.Scheme
import Syntax.Ide
import qualified Analysis.Contracts.Semantics as Contracts
import Analysis.Symbolic.Monad (choice)
import Analysis.Contracts.Monad


eval :: (ContractM m v msg mb) => Exp -> m v
eval (App (Var (Ide "fresh" _)) [e] _) = undefined
   -- var <$> fresh <*> eval e
eval (App (Var (Ide "fresh" _)) _ _) =
   error "invalid call to fresh"
eval e@(App op opr  _)    = evalApp e op opr
eval (Iff cnd csq alt _)  = 
   choice (eval cnd) (eval csq) (eval alt)
eval e = Contracts.eval e

evalApp :: Exp -> Exp -> [Exp] -> m v
evalApp app op opr = undefined
   -- uncurry (applyFun app) =<< liftA2 (,) (Monad.eval op) (mapM Monad.eval opr)

applyFun :: Exp -> v -> [v] -> m v
applyFun app op ags = undefined -- ap op ags <$> Scheme.applyFun app op ags
