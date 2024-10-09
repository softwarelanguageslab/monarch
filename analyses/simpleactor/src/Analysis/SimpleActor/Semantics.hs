{-# LANGUAGE AllowAmbiguousTypes, UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Move brackets to avoid $" #-}
{-# LANGUAGE LambdaCase #-}

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

import Analysis.Actors.Monad (stoPai)
import Domain.Core.PairDomain (cons, car ,cdr)
import Control.Applicative (liftA2)
import Analysis.Scheme.Primitives (Prim(..), primitivesByName)
import Domain (Domain(inject))
import Analysis.Environment (Environment(..))
import Analysis.Monad.Context (CtxM(..))
import Data.Maybe
import Debug.Trace
import Lattice.Class (bottom)

------------------------------------------------------------
-- Evaluation
------------------------------------------------------------

showIfBot :: EvalM v m => String -> v -> m v
showIfBot s v = (if v == bottom then trace s else id) (return v)

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
eval' rec (Match e pats _) = do
   val <- eval e
   matchList (\matchedExp -> allocMapping >=> (`withEnv'` eval' rec matchedExp))
             pats val
   where withEnv' ρ = withEnv (const ρ)
eval' rec (Letrec bds e2 _) = do
   ads <- mapM (alloc . fst) bds
   let bds' = zip (map (name . fst) bds) ads
   vs <- mapM (withExtendedEnv bds' . eval' rec . snd) bds
   mapM_ (uncurry writeAdr) (zip ads vs)
   withExtendedEnv bds' (eval' rec e2)
eval' rec (Parametrize bds e2 _) = do
   ads <- mapM (alloc . fst) bds
   let bds' = zip (map (name . fst) bds) ads
   vs <- mapM (eval' rec . snd) bds
   mapM_ (uncurry writeAdr) (zip ads vs)
   withExtendedDynamic bds' (eval' rec e2)
eval' rec (Begin exs _) =
   last . traceShowId <$> mapM (eval' rec) exs
eval' rec e@(Pair e1 e2 _) =
   stoPai e =<< liftA2 cons (eval' rec e1) (eval' rec e2)
eval' _ (Var (Ide x _)) =
   lookupEnv x >>= lookupAdr >>= showIfBot (show x ++ " not in store")
eval' _ (DynVar (Ide x _)) =
   lookupDynamic x >>= lookupAdr >>= showIfBot (show x ++ " dyn not in store")
eval' _ (Self _) = aref <$> getSelf @v
eval' rec (Blame e _) =
   eval' rec e >>= escape . BlameError . show
eval' rec (Meta e _) =
   withMetaSet (withCtx (spanOf e:) (eval' rec e))
eval' _ e = error $  "unsupported expression: " ++ show e

trySend :: EvalM v m => v -> v -> m ()
trySend ref p =
   cond   (pure $ isActorRef ref)
          (mjoinMap (`send` p) (arefs' ref))
          (escape InvalidArgument)

apply :: EvalM v m => (Exp -> m v) -> Exp -> v -> [v] -> m v
apply rec e v vs = condsCP
   [(pure $ isClo v, mjoinMap (\env -> applyClosure e env rec vs) (clos v)),
    (pure $ isPrim v, mjoinMap (\nam -> applyPrimitive nam e vs) (prims v))]
   (escape InvalidArgument)
applyClosure :: EvalM v m => Exp -> (Exp, Env v) -> (Exp -> m v) -> [v] -> m v
applyClosure e (Lam prs bdy _, env) rec vs = do
   ads <- mapM alloc prs
   let bds = zip (map name prs) ads
   mapM_ (uncurry writeAdr) (zip ads vs)
   ifMetaSet (withCtx (spanOf e:)) $ withEnv (const env) (withExtendedEnv bds (rec bdy))
applyClosure _ _ _ _ = error "invalid closure"
applyPrimitive :: forall v m . EvalM v m => String -> Exp -> [v] -> m v
applyPrimitive =
   runPrimitive . fromJust . lookupPrimitive

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
   -- TODO: don't rethrow the error, use `catchOn` for this
   (match pat value >>= f e) `catch` (mjoin (matchList f pats value) . throw)

-- | Match a pattern against a value
match :: forall v m . EvalM v m => Pat -> v -> m (Mapping v)
match (IdePat nam) val = return $ Map.fromList [(nam, val)]
match (ValuePat lit) v = -- trace ("l: " ++ show lit ++ " v: " ++ show v ++ " lv: " ++ show (injectLit @v lit)) $
   condCP (return $ eql (injectLit lit) v) (return Map.empty) (escape MatchError)
match (PairPat pat1 pat2) v =
      condCP (pure $ isPaiPtr v) (pptrs v >>= deref (const matchPair)) (escape MatchError)
   where matchPair vp =
            Map.unionWith (\v1' v2' -> if v1' == v2' then v1' else error "cannot map same variable to different values")
                      <$> match pat1 (car vp)
                      <*> match pat2 (cdr vp)

injectLit :: SchemeDomain v => Lit -> v
injectLit (Boolean b) = inject b
injectLit (Symbol s)  = symbol s
injectLit (Num n)     = inject n
injectLit Nil         = nil

------------------------------------------------------------
-- Primitives
------------------------------------------------------------

data Primitive v = SchemePrimitive (Prim v) | SimpleActorPrimitive (SimpleActorPrim v)

newtype SimpleActorPrim v = SimpleActorPrim (forall m . EvalM v m => [v] -> m v)

-- | A nullary primitive
aprim0 :: (forall m . EvalM v m => m v) -> SimpleActorPrim v
aprim0 f = SimpleActorPrim $ const f

-- | A primitive on one argument
aprim1 :: (forall m . EvalM v m => v -> m v) -> SimpleActorPrim v
aprim1 f = SimpleActorPrim $ \case [v] -> f v
                                   vs -> escape $ ArityMismatch 1 (length vs)

-- | A primitive on two arguments
aprim2 :: (forall m . EvalM v m => v -> v -> m v) -> SimpleActorPrim v
aprim2 f = SimpleActorPrim $ \case [v1, v2] -> f v1 v2
                                   vs -> escape $ ArityMismatch 2 (length vs)

-- | Primitives specific to the simple actor language
actorPrimitives :: Map String (Primitive v)
actorPrimitives =  SimpleActorPrimitive <$> Map.fromList [
   ("wait-until-all-finished", aprim0 $ return nil ),
   ("send^" , aprim2 $ \rcv msg -> trySend rcv msg >> return nil),
   ("list", aprim0 $ return nil),
   ("print", aprim1 $ const $ return nil) ]

-- | Scheme primitives
schemePrimitives :: Map String (Primitive v)
schemePrimitives = SchemePrimitive <$> primitivesByName

-- | The names of all primitives
allPrimitives :: [String]
allPrimitives = Map.keys actorPrimitives ++ Map.keys schemePrimitives

-- | Lookup a primitive starting from the actor primitives
lookupPrimitive :: String -> Maybe (Primitive v)
lookupPrimitive = untilJust [ (`Map.lookup` actorPrimitives), (`Map.lookup` schemePrimitives) ]

runPrimitive :: EvalM v m => Primitive v -> Exp -> [v] -> m v
runPrimitive (SchemePrimitive (Prim _ f)) = ($) f
runPrimitive (SimpleActorPrimitive (SimpleActorPrim f)) = const f

-- | Run the functions given as a list in the first argument on the 
-- second argument until an output is found that is @Just@.
untilJust :: [a -> Maybe b] -> a -> Maybe b
untilJust fs a = foldl (`maybe` Just) Nothing (fmap ($ a) fs)

-- | Compute a store containing the set of primitives
initialSto :: (SchemeDomain v) => [String] -> (String -> Adr v) ->  Map (Adr v) v
initialSto prms allocPrm = Map.fromList $ fmap (\nam -> (allocPrm nam, prim nam)) prms
