{-# LANGUAGE AllowAmbiguousTypes, UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Move brackets to avoid $" #-}

module Analysis.SimpleActor.Semantics where

import Syntax.AST
import Syntax.Span
import Control.Monad.Reader hiding (fix)
import Data.Map (Map)
import qualified Data.Map as Map
import Domain.Scheme.Class hiding (Exp)
import Domain.Scheme.Actors.Class

import Analysis.SimpleActor.Monad

import Control.Monad.Escape
import Control.Monad.Join
import Lattice (EqualLattice(..))
import Data.Functor (($>))

import Analysis.Monad.Allocation
import Analysis.Monad.Environment
import Analysis.Monad.Store

import Analysis.Monad.Fix

import Debug.Trace
import Analysis.Actors.Monad (stoPai)
import Domain.Core.PairDomain (cons, car ,cdr)
import Control.Applicative (liftA2)
import Analysis.Scheme.Primitives (primitive, Prim(..))
import Domain (Domain(inject))
import Analysis.Environment (Environment(..))

------------------------------------------------------------
-- Evaluation
------------------------------------------------------------

eval :: forall v m . EvalM v m => Exp -> m v
eval = fix eval'

eval' :: forall v m . EvalM v m => (Exp -> m v) -> Exp -> m v
eval' _ lam@(Lam {}) = injectClo . (lam,) <$> getEnv
eval' _ (Literal lit _) = return (injectLit lit)
eval' rec e@(App e1 es _) = do
   v1 <- eval' rec e1
   v2 <- mapM (eval' rec) es
   apply rec e v1 v2
eval' rec (Ite e1 e2 e3 _) = cond (eval' rec e1) (eval' rec e2) (eval' rec e3)
eval' rec s@(Spawn e _) =
   aref <$> spawn @v s (const $ rec e)
eval' _ (Terminate _) = terminate $> nil
eval' rec (Receive pats _) = do
   self <- getSelf
   receive self $
      matchList
         (\e -> allocMapping >=> (`withEnv'` eval' rec e))
         pats
   where withEnv' e = withEnv (const e)
eval' rec (Send e1 e2 _) = do
   receiver <- trace ("e: " ++ show e1) $ eval' rec e1
   payload  <- eval' rec e2
   trySend receiver payload
   return nil
eval' rec (Letrec bds e2 _) = do
   ads <- mapM (alloc . fst) bds
   let bds' = zip (map (name . fst) bds) ads
   vs <- mapM (withExtendedEnv bds' . eval' rec . snd) bds
   mapM_ (uncurry writeAdr) (zip ads vs)
   withExtendedEnv bds' (rec e2)
eval' rec (Begin exs _) =
   last <$> mapM (eval' rec) exs
eval' rec e@(Pair e1 e2 _) =
   stoPai e =<< liftA2 cons (eval e1) (eval e2)
eval' _ (Var (Ide x _)) =
   lookupEnv x >>= lookupAdr
eval' _ (Self _) = aref <$> getSelf @v
eval' rec (Blame e _) =
   rec e >>= escape . BlameError . show
eval' _ _ = error "unsupported expression"

trySend :: EvalM v m => v -> v -> m ()
trySend ref p =
   cond   (pure $ isActorRef ref)
          (mjoinMap (`send` p) (arefs' ref))
          (escape InvalidArgument)

apply :: EvalM v m => (Exp -> m v) -> Exp -> v -> [v] -> m v
apply rec e v vs = condsCP
   [(pure $ isClo v, mjoinMap (\env -> applyClosure env rec vs) (clos v)),
    (pure $ isPrim v, mjoinMap (\nam -> applyPrimitive nam e vs) (prims v))]
   (escape InvalidArgument)
applyClosure :: EvalM v m => (Exp, Env v) -> (Exp -> m v) -> [v] -> m v
applyClosure (Lam prs bdy _, env) rec vs = do
   ads <- mapM alloc prs
   let bds = zip (map name prs) ads
   mapM_ (uncurry writeAdr) (zip ads vs)
   withEnv (const env) (withExtendedEnv bds (rec bdy))
applyClosure _ _ _ = error "invalid closure"
applyPrimitive :: forall v m . EvalM v m => String -> Exp -> [v] -> m v
applyPrimitive nam =
   runPrimitive (primitive @v nam)

type Mapping v = Map Ide v

allocMapping :: EvalM v m => Map Ide v -> m (Env v)
allocMapping bds = do
   -- TODO: clean this up
   env <- getEnv
   foldM (\env' (ide@(Ide nam _), v) -> do { adr <- alloc ide ; writeAdr adr v ; return (extend nam adr env') }) env (Map.toList bds)

-- | Matches a list of patterns (from top to bottom) 
-- against a value.
--
-- NOTE: written in CPS because @Exp@ is not @Joinable@
matchList :: EvalM v m => (Exp -> Mapping v -> m v) -> [(Pat, Exp)] -> v -> m v
matchList _ [] _ = escape MatchError
matchList f ((pat, e):pats) value =
   (match pat value >>= f e) `catch` (\_ -> matchList f pats value)

-- | Match a pattern against a value
match :: EvalM v m => Pat -> v -> m (Mapping v)
match (IdePat nam) val = return $ Map.fromList [(nam, val)]
match (ValuePat lit) v =
   condCP (return $ eql (injectLit lit) v) (return Map.empty) (escape MatchError)
match (PairPat pat1 pat2) v =
      condCP (pure $ isPaiPtr v) (pptrs v >>= deref (const matchPair)) (escape MatchError)
   where matchPair vp =
            Map.unionWith (\v1' v2' -> if v1' == v2' then v1' else error "cannot map same variable to different values")
                      <$> match pat1 (car vp)
                      <*> match pat2 (cdr vp)

injectLit :: SchemeDomain v => Lit -> v
injectLit (Boolean b) = inject b
injectLit (Symbol s) = symbol s
injectLit (Num n) = inject n

------------------------------------------------------------
-- Primitives
------------------------------------------------------------

runPrimitive :: EvalM v m => Prim v -> Exp -> [v] -> m v
runPrimitive (Prim _ f) = ($) f

