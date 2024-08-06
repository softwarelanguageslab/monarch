{-# LANGUAGE TemplateHaskell, GADTs, AllowAmbiguousTypes, StandaloneDeriving, DerivingVia, KindSignatures, GeneralizedNewtypeDeriving, UndecidableInstances, RankNTypes #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Move brackets to avoid $" #-}
module GenericInterpreter where

import Syntax.AST
import Control.Monad.Reader
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad.State
import Control.Concurrent.Classy
import Control.Monad.Extra
import Control.Monad.Catch
import Control.Lens hiding (Context)
import Data.Maybe
import Data.Kind
import Data.Bifunctor

import Analysis.Monad.Environment
import Analysis.Monad
import Analysis.Monad.Store


------------------------------------------------------------
-- Value domain
------------------------------------------------------------

class (BottomLattice v) => ValueDomain v where
   type Adr  v  :: Type
   type ARef v  :: Type

   literal   :: Lit -> v
   pair      :: v -> v -> v
   closure   :: Exp -> Env -> v
   primitive :: String -> v
   actorRef  :: ARef v -> v

-- | A concrete environment
type Env v = Map String (Adr v)


------------------------------------------------------------
-- Monad typeclasses
------------------------------------------------------------

class MonadActor v m where   
   withSelf :: ARef v -> m a -> m a
   getSelf  :: m (ARef v)
   spawn    :: (ARef m -> m ()) -> m (Aref m)
   receive  :: (v -> m a) -> m a
   send     :: ARef v -> v -> m ()
   waitUntilAllFinished :: m ()

------------------------------------------------------------
-- Monad
------------------------------------------------------------

-- | Evaluation monad
type EvalM v m = (
   MonadIO m,
   EnvM m (Adr v) (Env v),
   AllocM m Ide (Adr v),
   StoreM m (Adr v) v,
   MonadActor v m
   )

------------------------------------------------------------
-- Evaluation
------------------------------------------------------------

eval :: EvalM v m => Exp -> m v
eval lam@(Lam _ _) = ClosureValue lam <$> getEnv
eval (Literal lit) = return (LiteralValue lit)
eval (App e1 es) = do
   v1 <- eval e1
   v2 <- mapM eval es
   apply v1 v2
eval (Ite e1 e2 e3) = do
   cnd <- eval e1
   case cnd of
      LiteralValue (Boolean b) -> if b then eval e2 else eval e3
      _ -> error "condition should be boolean"
eval (Spawn e) =
   ActorValue <$> spawnActor (`withSelf` (void $ eval e))
eval Terminate =
   myThreadId >>= killThread >> return bottom
eval (Receive pats) =
   receive (\v ->
      let (env', e) = fromMaybe (error "no match found") (matchList pats v)
      in do
         allocMapping env' >>= flip withMergedEnvironment (eval e))
eval (Send e1 e2) = do
   receiver <- eval e1
   payload  <- eval e2
   trySend receiver payload
   return ValueNil
eval (Letrec bds e2) = do
   ads <- mapM (alloc . fst) bds
   let bds' = zip (map (getName . fst) bds) ads
   vs <- mapM (withExtendedEnv' bds' . eval . snd) bds
   mapM_ (uncurry store) (zip ads vs)
   withExtendedEnv' bds' (eval e2)
eval (Begin exs) =
   last <$> mapM eval exs
eval (Pair e1 e2) =
   PairValue <$> eval e1 <*> eval e2
eval (Var (Ide x)) =
   lookupEnv x >>= deref
eval Self = ActorValue <$> getSelf
eval _ = error "unsupported expression"

trySend :: EvalM m => v -> v -> m ()
trySend (ActorValue ref) p = send ref p
trySend _ _ = error "receiver is not an actor reference"

apply :: EvalM m => v -> [v] -> m (v)
apply (ClosureValue (Lam prs e) env) vs = do
   ads <- mapM alloc prs
   let bds = zip (map getName prs) ads
   mapM_ (uncurry store) (zip ads vs)
   withEnv env (withExtendedEnv' bds (eval e))
apply (PrmValue nam) vs =
   runPrimitive (fromJust $ Map.lookup nam allPrimitives) vs
apply _ _ = error "not a closure or primitive"

type Mapping m = Map Ide (v)

allocMapping :: EvalM m => Map Ide (v) -> m Env
allocMapping = foldM (\env' (ide@(Ide nam), v) -> do { adr <- alloc ide ; store adr v ; return (Map.insert nam adr env') }) Map.empty . Map.toList

-- | Matches a list of patterns (from top to bottom) 
-- against a value
matchList :: [(Pat, Exp)] -> v -> Maybe (Mapping m, Exp)
matchList [] _ = Nothing
matchList ((pat, e):pats) value =
   case match pat value of
      Just v -> Just (v, e)
      _ -> matchList pats value

-- | Match a pattern against a value
match :: Pat -> v -> Maybe (Mapping m)
match (IdePat nam) val = Just (Map.fromList [(nam, val)])
match (ValuePat val) (LiteralValue val')
   | val == val' = Just Map.empty
   | otherwise = Nothing
match (PairPat pat1 pat2) (PairValue v1 v2) = do
      m1 <- match pat1 v1
      m2 <- match pat2 v2
      return $ Map.unionWith (\v1' v2' -> if v1' == v2' then v1' else error "cannot map same variable to different values")
                                m1 m2
match _ _ = Nothing

------------------------------------------------------------
-- Primitives
------------------------------------------------------------

newtype Prim = Prim (forall m . EvalM m => [v] -> m (v))

prim1 :: (forall m . EvalM m => v -> m (v)) -> Prim
prim1 f = Prim match
   where match :: forall m . EvalM m => [v] -> m (v)
         match [v] = f v
         match vs  = error $ "expected 1 argument, got " ++ show (length vs) ++ " arguments"

allPrimitives :: Map String Prim
allPrimitives = Map.fromList [
      ("print", prim1 $ liftIO . print >=> const (return ValueNil)) ,
      ("inc", prim1 $ \(LiteralValue (Num n)) -> return (LiteralValue (Num (n+1)))),
      ("wait-until-all-finished", Prim $ const waitUntilAllFinished >=> const (return ValueNil))
   ]

runPrimitive :: EvalM m => Prim -> [v] -> m (v)
runPrimitive (Prim f) = ($) f

initialEnv :: Map String Adr
initialEnv = Map.mapWithKey (const . PrmAdr) allPrimitives

storePrimitives :: EvalM m => m ()
storePrimitives = mapM_ (uncurry store . first PrmAdr) (Map.toList $ Map.mapWithKey (const . PrmValue) allPrimitives)
