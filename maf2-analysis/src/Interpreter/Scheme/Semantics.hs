{-# LANGUAGE FlexibleContexts, FlexibleInstances, IncoherentInstances #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use <&>" #-}
{-# OPTIONS_GHC -Wno-orphans #-}
module Interpreter.Scheme.Semantics(eval) where

import Analysis.Semantics
import qualified Analysis.Monad as Monad hiding (EvalT)
import Syntax.Scheme.AST
import Syntax.Ide
import Control.Applicative (Applicative(liftA2))
import Analysis.Monad (EvalM, eval)
import Control.Monad (zipWithM_)
import Prelude hiding (exp, lex)
import Interpreter.Scheme.Monad
import Interpreter.Scheme.Primitives
import Interpreter.Scheme.Values

withProc :: (InterpreterM m) => (Either String (Exp, Env) -> m SchemeValue) -> SchemeValue -> m SchemeValue
withProc f (SchemeClo clo) = f $ Right clo
withProc f (SchemePrim clo) = f $ Left clo
withProc _ vlu = error $ "value is not a procedure " ++ show vlu

cond :: (Monad m) => m SchemeValue -> m SchemeValue -> m SchemeValue -> m SchemeValue
cond cnd t f = cnd >>= (\b -> if trueish b then t else f)

instance (InterpreterM m) => EvalM m SchemeValue Exp where
   -- | Base level evaluation function
   eval (Num n _)            = return $ SchemeInt n
   eval (Bln b _)            = return $ SchemeBoo b
   eval (Nll _)              = return SchemeNil
   eval e@(Str s _)          = allocAdr e >>= storeVal (SchemeString s)
   eval (Var (Ide nam _))    = lookupEnv nam >>= lookupSto
   eval (Iff prd csq alt _)  = cond (eval prd) (eval csq) (eval alt)
   eval (Bgn sqq _)          = evalSequence sqq
   eval e@(Lam {})           = curry SchemeClo e <$> getEnv -- TODO: restrict env based on fv
   eval (Set x e _)          = evalSet x e 
   eval (Let bds bdy _)      = evalLet bds bdy
   eval (Ltt bds bdy _)      = evalLetStar bds bdy
   eval (Ltr bds bdy _)      = evalLetRec bds bdy
   eval (Lrr bds bdy _)      = evalLetrecStar bds bdy
   eval e@(App op opr  _)    = evalApp e op opr
   eval e                    = error $ "Unrecognized expression" ++ show e

evalSet :: (InterpreterM m) => Ide -> Exp -> m SchemeValue 
evalSet x e = do 
   v <- eval e 
   adr <- lookupEnv (name x) 
   updateSto adr v
   return v

evalLet :: (InterpreterM m) => [(Ide, Exp)] -> Exp -> m SchemeValue
evalLet bds bdy = do
   vlus <- mapM Monad.eval eps
   adrs <- mapM allocVar vrs
   mapM_ (uncurry extendSto) (zip adrs vlus)
   withExtendedEnv (zip (map name vrs) adrs) (eval bdy)
   where (vrs, eps) = unzip bds

evalLetStar :: (InterpreterM m) => [(Ide, Exp)] -> Exp -> m SchemeValue
evalLetStar [] bdy = eval bdy
evalLetStar ((nam, ex) : rst) bdy = do
   vlu <- Monad.eval ex
   adr <- allocVar nam
   _   <- extendSto adr vlu
   withExtendedEnv [(name nam, adr)] (evalLetStar rst bdy)

evalLetRec :: forall m . (InterpreterM m) => [(Ide, Exp)] -> Exp -> m SchemeValue
evalLetRec bds bdy = do
   adrs  <- mapM allocVar vrs
   mapM_ (uncurry extendSto . (, SchemeUns)) adrs
   withExtendedEnv (zip (map name vrs) adrs) $ do
      vlus <- mapM Monad.eval eps
      mapM_ (uncurry extendSto) (zip adrs vlus)
      Monad.eval bdy
   where (vrs, eps) = unzip bds

evalLetrecStar :: forall m . (InterpreterM m) => [(Ide, Exp)] -> Exp -> m SchemeValue
evalLetrecStar bds bdy = do
   adrs  <- mapM (allocVar . fst) bds
   mapM_ (uncurry extendSto . (, SchemeUns)) adrs
   withExtendedEnv (zip (map (name . fst) bds) adrs) $ do
      -- difference with `letrec` is that the store is updated after each binding evaluation
      mapM_ (uncurry evalBinding) (zip adrs bds)
      Monad.eval bdy
   where evalBinding adr (_, exp) = do
            vlu <- Monad.eval exp
            extendSto adr vlu
            return vlu

evalApp :: (InterpreterM m) => Exp -> Exp -> [Exp] -> m SchemeValue
evalApp app op opr =
   uncurry (applyFun app) =<< liftA2 (,) (Monad.eval op) (mapM Monad.eval opr)

applyFun :: (InterpreterM m) => Exp -> SchemeValue -> [SchemeValue] -> m SchemeValue
applyFun app op ags = withProc (either (applyPrim app ags) (`applyClo` ags)) op

applyClo :: (InterpreterM m) => (Exp, Env) -> [SchemeValue] -> m SchemeValue
applyClo (e@(Lam prs bdy _), lex) ags = do
   withEnv (const lex) $ do
      adrs <- mapM allocVar prs
      zipWithM_ extendSto adrs ags
      withExtendedEnv (zip (map name prs) adrs) $ do
         vlu <- eval bdy
         env <- getEnv
         _   <- allocRet e env >>= storeVal vlu
         return vlu

applyClo _ _ = error "invalid closure"

applyPrim :: (InterpreterM m) => Exp -> [SchemeValue] -> String -> m SchemeValue
applyPrim f ags nam = run (primitive nam) f ags
