{-# LANGUAGE AllowAmbiguousTypes, UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Move brackets to avoid $" #-}

module Analysis.SimpleActor.Semantics where

import Syntax.AST
import Syntax.Span
import Control.Monad.Reader hiding (fix)
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe
import Domain (NumberDomain(plus), inject)
import qualified Domain.Core.BoolDomain.Class as BoolDomain


import Analysis.SimpleActor.Monad

import Control.Monad.Escape
import Control.Monad.Join
import Lattice (EqualLattice(..))
import Data.Functor (($>))

import Analysis.Monad.Allocation
import Analysis.Monad.Environment
import Analysis.Monad.Store

import Domain.SimpleActor
import Analysis.Monad.Fix

import Debug.Trace

------------------------------------------------------------
-- Evaluation
------------------------------------------------------------

eval :: forall v m . EvalM v m => Exp -> m v
eval = fix eval'

eval' :: forall v m . EvalM v m => (Exp -> m v) -> Exp -> m v
eval' _ lam@(Lam {}) = closure lam <$> getEnv
eval' _ (Literal lit _) = return (injectLit lit)
eval' rec (App e1 es _) = do
   v1 <- eval' rec e1
   v2 <- mapM (eval' rec) es
   apply rec v1 v2
eval' rec (Ite e1 e2 e3 _) = cond (eval' rec e1) (eval' rec e2) (eval' rec e3)
eval' rec s@(Spawn e _) =
   actorRef <$> spawn @v (spanOf s) (const $ rec e)
eval' _ (Terminate _) = terminate $> nil
eval' rec (Receive pats _) = do
   self <- getSelf
   receive self $
      matchList
         (\e -> allocMapping >=> (`withExtendedEnv` eval' rec e) . Map.toList)
         pats
eval' rec (Send e1 e2 _) = do
   receiver <- trace ("e: " ++ show e1) $ eval' rec e1
   payload  <- eval' rec e2
   trySend receiver payload
   return nil
eval' rec (Letrec bds e2 _) = do
   ads <- mapM (alloc . fst) bds
   let bds' = zip (map (getName . fst) bds) ads
   vs <- mapM (withExtendedEnv bds' . eval' rec . snd) bds
   mapM_ (uncurry writeAdr) (zip ads vs)
   withExtendedEnv bds' (rec e2)
eval' rec (Begin exs _) =
   last <$> mapM (eval' rec) exs
eval' rec (Pair e1 e2 _) =
   pair <$> eval' rec e1 <*> eval' rec e2
eval' _ (Var (Ide x _)) =
   lookupEnv x >>= lookupAdr
eval' _ (Self _) = actorRef <$> getSelf @v
eval' rec (Blame e _) =
   rec e >>= mjoinMap (escape . BlameError) . labels
eval' _ _ = error "unsupported expression"

trySend :: EvalM v m => v -> v -> m ()
trySend ref p =
   condCP (isActorRef ref)
          (mjoinMap (`send` p) (actorRefs ref))
          (escape InvalidArgument)

apply :: EvalM v m => (Exp -> m v) -> v -> [v] -> m v
apply rec v vs = condsCP
   [(isClosure v, mjoinMap (\env -> applyClosure env rec vs) (closures v)),
    (isPrimitive v, mjoinMap (`applyPrimitive` vs) (primitives v))]
   (escape InvalidArgument)
applyClosure :: EvalM v m => (Exp, Env v) -> (Exp -> m v) -> [v] -> m v
applyClosure (Lam prs bdy _, env) rec vs = do
   ads <- mapM alloc prs
   let bds = zip (map getName prs) ads
   mapM_ (uncurry writeAdr) (zip ads vs)
   withEnv (const env) (withExtendedEnv bds (rec bdy))
applyClosure _ _ _ = error "invalid closure"
applyPrimitive :: EvalM v m => String -> [v] -> m v
applyPrimitive nam =
   runPrimitive (fromJust $ Map.lookup nam allPrimitives)

type Mapping v = Map Ide v

allocMapping :: EvalM v m => Map Ide v -> m (Env v)
allocMapping = foldM (\env' (ide@(Ide nam _), v) -> do { adr <- alloc ide ; writeAdr adr v ; return (Map.insert nam adr env') }) Map.empty . Map.toList

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
      condCP (isPair v) (mjoinMap matchPair (pairs v)) (escape MatchError)
   where matchPair (v1, v2) =
            Map.unionWith (\v1' v2' -> if v1' == v2' then v1' else error "cannot map same variable to different values")
                      <$> match pat1 v1
                      <*> match pat2 v2

injectLit :: ValueDomain v => Lit -> v
injectLit (Boolean b) = inject b
injectLit (Symbol s) = symbol s
injectLit (Num n) = inject n

------------------------------------------------------------
-- Primitives
------------------------------------------------------------

newtype Prim v = Prim (forall m . EvalM v m => [v] -> m v)

prim1 :: forall v . (forall m . EvalM v m => v -> m v) -> Prim v
prim1 f = Prim match1
   where match1 :: forall m . EvalM v m => [v] -> m v
         match1 [v] = f v
         match1 vs  = error $ "expected 1 argument, got " ++ show (length vs) ++ " arguments"

allPrimitives :: Map String (Prim v)
allPrimitives = Map.fromList [
      ("print", prim1 $ const $ return nil) ,
      ("inc", prim1 $ \v -> plus v (inject @_ @Integer 1)),
      ("+", Prim $ \[v1, v2] -> plus v1 v2),
      ("nonzero?", prim1 (return . BoolDomain.not . eql (inject (0 :: Integer)))),
      ("wait-until-all-finished", Prim $ const waitUntilAllFinished >=> const (return nil))
   ]

runPrimitive :: EvalM v m => Prim v -> [v] -> m v
runPrimitive (Prim f) = ($) f

