{-# LANGUAGE FlexibleContexts #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use <&>" #-}
module Analysis.Scheme.Semantics(eval, applyFun, applyClo, applyPrim) where

import Analysis.Semantics
import Analysis.Monad hiding (eval)
import Analysis.Scheme.Monad
import qualified Analysis.Monad as Monad
import Syntax.Scheme.AST
import Domain hiding (Exp)
import Control.Applicative (Applicative(liftA2))
import Analysis.Scheme.Primitives
import Control.Monad.Join
import Control.Monad (zipWithM_)
import Prelude hiding (exp, lex)

-- | Base level evaluation function
eval ::  forall m v . (SchemeDomain v, SchemeM m v) => Exp -> m v
eval (Num n _)            = return (inject n)
eval (Bln b _)            = return (inject b)
eval (Nll _)              = return nil
eval (Sym s _)            = return (symbol s)
eval e@(Str s _)          = stoStr e (inject s)
eval (Var (Ide nam _))    = lookupEnv nam >>= lookupAdr
eval (Iff prd csq alt _)  = cond (Monad.eval prd) (Monad.eval csq) (Monad.eval alt)
eval (Bgn sqq _)          = evalSequence sqq 
eval e@(Lam {})           = curry injectClo e <$> getEnv -- TODO: restrict env based on fv
eval (Let bds bdy _)      = evalLet bds bdy
eval (Ltt bds bdy _)      = evalLetStar bds bdy
eval (Ltr bds bdy _)      = evalLetRec bds bdy
eval (Lrr bds bdy _)      = evalLetrecStar bds bdy
eval e@(App op opr  _)    = evalApp e op opr
eval e                    = error $ "Unrecognized expression" ++ show e

evalLet :: (SchemeDomain v, SchemeM m v) => [(Ide, Exp)] -> Exp -> m v
evalLet bds bdy = do
   vlus <- mapM Monad.eval eps
   adrs <- mapM allocVar vrs
   mapM_ (uncurry writeAdr) (zip adrs vlus)
   withExtendedEnv (zip (map name vrs) adrs) (Monad.eval bdy)
   where (vrs, eps) = unzip bds

evalLetStar :: (SchemeDomain v, SchemeM m v) => [(Ide, Exp)] -> Exp -> m v
evalLetStar [] bdy = Monad.eval bdy
evalLetStar ((nam, ex) : rst) bdy = do
   vlu <- Monad.eval ex
   adr <- allocVar nam
   _   <- writeAdr adr vlu
   withExtendedEnv [(name nam, adr)] (evalLetStar rst bdy)

evalLetRec :: forall v m . (SchemeDomain v, SchemeM m v) => [(Ide, Exp)] -> Exp -> m v
evalLetRec bds bdy = do
   adrs  <- mapM allocVar vrs
   -- mapM_ (uncurry writeAdr . (, unsp)) adrs
   withExtendedEnv (zip (map name vrs) adrs) $ do
      vlus <- mapM Monad.eval eps
      mapM_ (uncurry writeAdr) (zip adrs vlus)
      Monad.eval bdy
   where (vrs, eps) = unzip bds

evalLetrecStar :: forall v m . (SchemeDomain v, SchemeM m v) => [(Ide, Exp)] -> Exp -> m v
evalLetrecStar bds bdy = do
   adrs  <- mapM (allocVar . fst) bds
   -- mapM_ (uncurry writeAdr . (, unsp)) adrs
   withExtendedEnv (zip (map (name . fst) bds) adrs) $ do
      -- difference with `letrec` is that the store is updated after each binding evaluation
      mapM_ (uncurry evalBinding) (zip adrs bds)
      Monad.eval bdy
   where evalBinding adr (_, exp) = do 
            vlu <- Monad.eval exp
            writeAdr @_ @_ @_ @v adr vlu
            return vlu

evalApp :: (SchemeDomain v, SchemeM m v) => Exp -> Exp -> [Exp] -> m v
evalApp app op opr =
   uncurry (applyFun app) =<< liftA2 (,) (Monad.eval op) (mapM Monad.eval opr)

applyFun :: (SchemeDomain v, SchemeM m v) => Exp -> v -> [v] -> m v
applyFun app op ags = withProc (either (applyPrim app ags) (`applyClo` ags)) op

applyClo :: (SchemeDomain v, SchemeM m v) => (Exp, Env v) -> [v] -> m v
applyClo clo@(Lam prs _ _, lex) ags = do
   withEnv (const lex) $ do
      adrs <- mapM allocVar prs
      zipWithM_ writeAdr adrs ags
      withExtendedEnv (zip (map name prs) adrs) $ call clo
applyClo _ _ = error "invalid closure"

applyPrim :: (SchemeDomain v, SchemeM m v) => Exp -> [v] -> String -> m v
applyPrim f ags nam = run (primitive nam) f ags
