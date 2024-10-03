{-# LANGUAGE TemplateHaskell, GADTs, AllowAmbiguousTypes, StandaloneDeriving, DerivingVia, KindSignatures, GeneralizedNewtypeDeriving, UndecidableInstances, RankNTypes #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Move brackets to avoid $" #-}
module Interpreter where

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

-- | A concrete environment
type Env = Map String Adr

-- | Concrete addresses 
data Adr = Adr Int
         | PrmAdr String deriving (Eq, Ord, Show)

-- | An actor message is any value
type Message m = Value m

data ARef (m :: Type -> Type) where
   ARef :: Chan m (Message m) -> Int -> ARef m

instance Show (ARef m) where
   show (ARef _ i) = show i
instance Ord (ARef m) where
   compare (ARef _ i) (ARef _ i') = compare i i'
instance Eq (ARef m) where
   (==) (ARef _ i) (ARef _ i') = i == i'

-- | Concrete values of the interpreter
data Value m =
     LiteralValue Lit
   | PairValue (Value m) (Value m)
   | ClosureValue Exp Env
   | PrmValue String
   | ActorValue (ARef m)
   | ValueNil
   deriving (Eq, Ord, Show)


-- | Actor system state
data SystemState m = SystemState {
   latestPid :: IORef m Int,
   latestAdr :: IORef m Int,
   -- TODO: hiding currStore behind an IORef 
   -- is horribly inefficient and causes a lot 
   -- of contention. However, the semantics
   -- allow for some kind of scoped, localising
   -- most parts of the state per thread.
   currStore :: IORef m (Map Adr (Value m)),
   finishSignals :: IORef m [MVar m ()]
   }

-- | Evaluation context (reader)
data Context m = Context {
   -- | static environment
   _environment :: Env,
   -- | values from the dynamic environment
   _parameters  :: Env,
   -- | Current self reference (none if main actor)
   _self :: Maybe (ARef m) }

$(makeLenses ''Context)

emptyContext :: Context m
emptyContext = Context Map.empty Map.empty Nothing

-- | Evaluation monad
type EvalM m = (
   MonadConc m,
   MonadIO m,
   MonadReader (Context m) m,
   MonadState (SystemState m) m
   )

------------------------------------------------------------
-- Auxilary functions
------------------------------------------------------------

bottom :: a
bottom = bottom

dup :: v -> (v, v)
dup v = (v,v)

-- Env

getEnv :: EvalM m => m Env
getEnv = asks (view environment)

withExtendedEnv' :: EvalM m => [(String, Adr)] -> m a -> m a
withExtendedEnv' kv = local (over environment (flip (foldl (flip (uncurry Map.insert))) kv))

withExtendedEnv :: EvalM m => String -> Adr -> m a -> m a
withExtendedEnv adr val = withExtendedEnv' [(adr, val)]

withMergedEnvironment :: EvalM m => Env -> m a -> m a
withMergedEnvironment env' = local (over environment (`Map.union` env'))

withExtendedDynamic :: EvalM m => [(String, Adr)] -> m a -> m a
withExtendedDynamic kv = local (over parameters (flip (foldl (flip (uncurry Map.insert))) kv))


withEnv :: EvalM m => Env -> m a -> m a
withEnv env = local (over environment (const env))

lookupEnv :: EvalM m => String -> m Adr
lookupEnv nam = asks (fromMaybe (error $ nam ++ " not found") . Map.lookup nam .  view environment)

lookupDynamic :: EvalM m => String -> m Adr
lookupDynamic nam = asks (fromMaybe (error $ nam ++ " not found") . Map.lookup nam .  view parameters)


-- Store

alloc :: EvalM m => Ide -> m Adr
alloc _ =
   getsM (fmap Adr . flip atomicModifyIORef (\v -> (v+1, v+1)) . latestAdr)

store :: EvalM m => Adr -> Value m -> m ()
store adr val =
   getsM (modifyRef' (Map.insert adr val) . currStore)

deref :: EvalM m => Adr ->  m (Value m)
deref adr =
   getsM (fmap (fromJust . Map.lookup adr) . readIORef  . currStore)

-- Actor

withSelf :: EvalM m => ARef m -> m a -> m a
withSelf self' = local (over self (const (Just self')))

getSelf :: EvalM m => m (ARef m)
getSelf = asks (fromJust . view self)

newPid :: EvalM m => m Int
newPid = getsM (flip atomicModifyIORef (\v -> (v+1, v+1)) . latestPid)

spawnActor :: EvalM m => (ARef m -> m ()) -> m (ARef m)
spawnActor f = do
   ref <- ARef <$> newChan <*> newPid
   finishSignal <- newEmptyMVar
   getsM (void . modifyRef (finishSignal:) . finishSignals)
   void $ forkFinally (f ref) (const $ putMVar finishSignal ())
   return ref

receive :: EvalM m => (Value m -> m a) -> m a
receive f = asks (fromJust . view self) >>= (\(ARef chan _) -> readChan chan >>= f)

send :: EvalM m => ARef m -> Value m -> m ()
send (ARef chan _) = writeChan chan

waitUntilAllFinished :: EvalM m => m ()
waitUntilAllFinished = getsM (readIORef . finishSignals) >>= mapM_ takeMVar

------------------------------------------------------------
-- Evaluation
------------------------------------------------------------

eval :: EvalM m => Exp -> m (Value m)
eval lam@(Lam {}) = ClosureValue lam <$> getEnv
eval (Literal lit _) = return (LiteralValue lit)
eval (App e1 es _) = do
   v1 <- eval e1
   v2 <- mapM eval es
   apply v1 v2
eval (Ite e1 e2 e3 _) = do
   cnd <- eval e1
   case cnd of
      LiteralValue (Boolean b) -> if b then eval e2 else eval e3
      _ -> error "condition should be boolean"
eval (Spawn e _) =
   ActorValue <$> spawnActor (`withSelf` (void $ eval e))
eval (Terminate _) =
   myThreadId >>= killThread >> return bottom
eval (Receive pats _) =
   receive (\v ->
      let (env', e) = fromMaybe (error "no match found") (matchList pats v)
      in do
         allocMapping env' >>= flip withMergedEnvironment (eval e))
eval (Letrec bds e2 _) = do
   ads <- mapM (alloc . fst) bds
   let bds' = zip (map (name . fst) bds) ads
   vs <- mapM (withExtendedEnv' bds' . eval . snd) bds
   mapM_ (uncurry store) (zip ads vs)
   withExtendedEnv' bds' (eval e2)
eval (Begin exs _) =
   last <$> mapM eval exs
eval (Pair e1 e2 _) =
   PairValue <$> eval e1 <*> eval e2
eval (Var (Ide x _)) =
   lookupEnv x >>= deref
eval (DynVar (Ide x _)) = 
   lookupDynamic x >>= deref
eval (Self _) = ActorValue <$> getSelf
eval (Parametrize bds e _) = do
   ads <- mapM (alloc . fst) bds
   let bds' = zip (map (name . fst) bds) ads
   vs <- mapM (withExtendedDynamic bds' . eval . snd) bds
   mapM_ (uncurry store) (zip ads vs)
   withExtendedDynamic bds' (eval e)
eval (Blame k _) = do 
   v <- eval k
   error $ "blaming" ++ show v
eval _ = error "unsupported expression"

trySend :: EvalM m => Value m -> Value m -> m ()
trySend (ActorValue ref) p = send ref p
trySend _ _ = error "receiver is not an actor reference"

apply :: EvalM m => Value m -> [Value m] -> m (Value m)
apply (ClosureValue (Lam prs e _) env) vs = do
   ads <- mapM alloc prs
   let bds = zip (map name prs) ads
   mapM_ (uncurry store) (zip ads vs)
   withEnv env (withExtendedEnv' bds (eval e))
apply (PrmValue nam) vs =
   runPrimitive (fromJust $ Map.lookup nam allPrimitives) vs
apply _ _ = error "not a closure or primitive"

type Mapping m = Map Ide (Value m)

allocMapping :: EvalM m => Map Ide (Value m) -> m Env
allocMapping = foldM (\env' (ide@(Ide nam _), v) -> do { adr <- alloc ide ; store adr v ; return (Map.insert nam adr env') }) Map.empty . Map.toList

-- | Matches a list of patterns (from top to bottom) 
-- against a value
matchList :: [(Pat, Exp)] -> Value m -> Maybe (Mapping m, Exp)
matchList [] _ = Nothing
matchList ((pat, e):pats) value =
   case match pat value of
      Just v -> Just (v, e)
      _ -> matchList pats value

-- | Match a pattern against a value
match :: Pat -> Value m -> Maybe (Mapping m)
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

newtype Prim = Prim (forall m . EvalM m => [Value m] -> m (Value m))

prim1 :: (forall m . EvalM m => Value m -> m (Value m)) -> Prim
prim1 f = Prim match
   where match :: forall m . EvalM m => [Value m] -> m (Value m)
         match [v] = f v
         match vs  = error $ "expected 1 argument, got " ++ show (length vs) ++ " arguments"

allPrimitives :: Map String Prim
allPrimitives = Map.fromList [
      ("print", prim1 $ liftIO . print >=> const (return ValueNil)) ,
      ("inc", prim1 $ \(LiteralValue (Num n)) -> return (LiteralValue (Num (n+1)))),
      ("wait-until-all-finished", Prim $ const waitUntilAllFinished >=> const (return ValueNil)),
      ("send^", Prim $ \[recv, payload] -> trySend recv payload >> return ValueNil),
      ("*", Prim $ \[LiteralValue (Num n1), LiteralValue (Num n2)] -> return (LiteralValue (Num $ n1*n2))),
      ("+", Prim $ \[LiteralValue (Num n1), LiteralValue (Num n2)] -> return (LiteralValue (Num $ n1+n2))),
      ("nonzero?", prim1 $ \(LiteralValue (Num n)) -> return $ LiteralValue (Boolean (n /= 0))),
      ("positive?", prim1 $ \(LiteralValue (Num n)) -> return $ LiteralValue (Boolean (n > 0)))
   ]

runPrimitive :: EvalM m => Prim -> [Value m] -> m (Value m)
runPrimitive (Prim f) = ($) f

initialEnv :: Map String Adr
initialEnv = Map.mapWithKey (const . PrmAdr) allPrimitives

storePrimitives :: EvalM m => m ()
storePrimitives = mapM_ (uncurry store . first PrmAdr) (Map.toList $ Map.mapWithKey (const . PrmValue) allPrimitives)

------------------------------------------------------------
-- Execution
------------------------------------------------------------

newtype M a = M { runM :: ReaderT (Context M) (StateT (SystemState M) IO) a }
            deriving (MonadIO, MonadCatch, MonadThrow, MonadMask, MonadConc, MonadState (SystemState M), MonadReader (Context M), Monad, Applicative, Functor)

runEval ::  M a -> IO a
runEval ma = do
   latestPid <- newIORef 0
   latestAdr <- newIORef 0
   currStore <- newIORef Map.empty
   finishSignals <- newIORef []


   flip evalStateT (SystemState latestPid latestAdr currStore finishSignals) $ flip runReaderT (over environment (const initialEnv) emptyContext) $ runM (storePrimitives >> ma)
