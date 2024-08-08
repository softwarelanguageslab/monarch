{-# LANGUAGE GADTs, AllowAmbiguousTypes, DerivingVia, UndecidableInstances, RankNTypes, ScopedTypeVariables, TypeFamilies, TypeApplications, FunctionalDependencies #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Move brackets to avoid $" #-}

module Analysis.SimpleActor.GenericInterpreter where

import Syntax.AST
import Control.Monad.Reader
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe
import Domain (Domain, NumberDomain(plus), inject)

import Analysis.Monad.Allocation
import Analysis.Monad.Environment
import Analysis.Monad.Store

import Control.Monad.Escape
import Control.Monad.Join
import Control.Monad.DomainError (DomainError)
import Lattice (EqualLattice(..))
import Data.Functor (($>))

import Domain.SimpleActor

------------------------------------------------------------
-- Errors
------------------------------------------------------------

data Error = MatchError | InvalidArgument | BlameError Label

------------------------------------------------------------
-- Monad typeclasses
------------------------------------------------------------

class MonadActor v m | m -> v where
   withSelf  :: ARef v -> m a -> m a
   getSelf   :: m (ARef v)
   spawn     :: (ARef v -> m ()) -> m (ARef v)
   receive   :: (v -> m a) -> m a
   send      :: ARef v -> v -> m ()
   terminate :: m ()
   waitUntilAllFinished :: m ()

------------------------------------------------------------
-- Monad
------------------------------------------------------------

-- | Evaluation monad
type EvalM v m = (
   MonadIO m,
   MonadJoin m,
   EnvM m (Adr v) (Env v),
   AllocM m Ide (Adr v),
   StoreM m (Adr v) v,
   MonadActor v m,
   MonadEscape m,
   Domain (Esc m) DomainError,
   Domain (Esc m) Error,
   ValueDomain v
   )

------------------------------------------------------------
-- Evaluation
------------------------------------------------------------

eval :: forall v m . EvalM v m => Exp -> m v
eval lam@(Lam _ _) = closure lam <$> getEnv
eval (Literal lit) = return (injectLit lit)
eval (App e1 es) = do
   v1 <- eval e1
   v2 <- mapM eval es
   apply v1 v2
eval (Ite e1 e2 e3) = cond (eval e1) (eval e2) (eval e3)
eval (Spawn e) =
   actorRef <$> spawn (`withSelf` (void $ eval e))
eval Terminate = terminate $> nil
eval (Receive pats) =
   receive $
      matchList
         (\e -> allocMapping >=> (`withExtendedEnv` eval e) . Map.toList)
         pats
eval (Send e1 e2) = do
   receiver <- eval e1
   payload  <- eval e2
   trySend receiver payload
   return nil
eval (Letrec bds e2) = do
   ads <- mapM (alloc . fst) bds
   let bds' = zip (map (getName . fst) bds) ads
   vs <- mapM (withExtendedEnv bds' . eval . snd) bds
   mapM_ (uncurry writeAdr) (zip ads vs)
   withExtendedEnv bds' (eval e2)
eval (Begin exs) =
   last <$> mapM eval exs
eval (Pair e1 e2) =
   pair <$> eval e1 <*> eval e2
eval (Var (Ide x)) =
   lookupEnv x >>= lookupAdr
eval Self = actorRef <$> getSelf @v
eval (Blame e) = 
   eval e >>= mjoinMap (escape . BlameError) . labels
eval _ = error "unsupported expression"

trySend :: EvalM v m => v -> v -> m ()
trySend ref p =
   condCP (isActorRef ref)
          (mjoinMap (`send` p) (actorRefs ref))
          (escape InvalidArgument)

apply :: EvalM v m => v -> [v] -> m v
apply v vs = condsCP
   [(isClosure v, mjoinMap (`applyClosure` vs) (closures v)),
    (isPrimitive v, mjoinMap (`applyPrimitive` vs) (primitives v))]
   (escape InvalidArgument)
applyClosure :: EvalM v m => (Exp, Env v) -> [v] -> m v
applyClosure (Lam prs bdy, env) vs = do
   ads <- mapM alloc prs
   let bds = zip (map getName prs) ads
   mapM_ (uncurry writeAdr) (zip ads vs)
   withEnv (const env) (withExtendedEnv bds (eval bdy))
applyClosure _ _ = error "invalid closure"
applyPrimitive :: EvalM v m => String -> [v] -> m v
applyPrimitive nam =
   runPrimitive (fromJust $ Map.lookup nam allPrimitives)

type Mapping v = Map Ide v

allocMapping :: EvalM v m => Map Ide v -> m (Env v)
allocMapping = foldM (\env' (ide@(Ide nam), v) -> do { adr <- alloc ide ; writeAdr adr v ; return (Map.insert nam adr env') }) Map.empty . Map.toList

-- | Matches a list of patterns (from top to bottom) 
-- against a value
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
      ("print", prim1 $ liftIO . print >=> const (return nil)) ,
      ("inc", prim1 $ \v -> plus v (inject @_ @Integer 1)),
      ("wait-until-all-finished", Prim $ const waitUntilAllFinished >=> const (return nil))
   ]

runPrimitive :: EvalM v m => Prim v -> [v] -> m v
runPrimitive (Prim f) = ($) f
