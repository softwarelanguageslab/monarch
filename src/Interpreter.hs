{-# LANGUAGE TemplateHaskell, GADTs, AllowAmbiguousTypes, StandaloneDeriving, DerivingVia #-}
module Interpreter where

import Syntax.AST
import Control.Monad.Reader
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad.State
import Control.Concurrent.Classy
import Control.Monad.Extra
import Control.Lens hiding (Context)
import Data.Maybe

-- | A concrete environment
type Env m = Map String (Value m)

-- | An actor message is any value
type Message m = Value m

data ARef m where   
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
   | ClosureValue Exp (Env m)
   | ActorValue (ARef m)
   | ValueNil
   deriving (Eq, Ord, Show)


-- | Actor system state
type SystemState m = IORef m Int

-- | Evaluation context (reader)
data Context m = Context {
   -- | static environment
   _environment :: (Env m), 
   -- | values from the dynamic environment
   _parameters  :: (Env m),
   -- | Current self reference (none if main actor)
   _self :: Maybe (ARef m) }

$(makeLenses ''Context)

-- | Evaluation monad
type EvalM m = (
   MonadConc m,
   MonadReader (Context m) m,
   MonadState (SystemState m) m
   )

------------------------------------------------------------
-- Auxilary functions
------------------------------------------------------------

bottom :: a
bottom = bottom

getEnv :: EvalM m => m (Env m)
getEnv = asks (view environment)

withExtendedEnv :: EvalM m => String -> Value m -> m a -> m a
withExtendedEnv nam val = local (over environment (Map.insert nam val))

withMergedEnvironment :: EvalM m => Env m -> m a -> m a
withMergedEnvironment env' = local (over environment (flip Map.union env'))

withEnv :: EvalM m => Env m -> m a -> m a
withEnv env = local (over environment (const env))

withSelf :: EvalM m => ARef m -> m a -> m a
withSelf self' = local (over self (const (Just self')))

newPid :: EvalM m => m Int
newPid = modifyM (modifyRef (+1)) >> getsM readIORef

spawnActor :: EvalM m => (ARef m -> m ()) -> m (ARef m)
spawnActor f = do
   ref <- ARef <$> newChan <*> newPid
   void $ fork (f ref)
   return ref

receive :: EvalM m => (Value m -> m a) -> m a
receive f = asks (fromJust . view self) >>= (\(ARef chan _) -> readChan chan >>= f)

send :: EvalM m => ARef m -> Value m -> m ()
send (ARef chan _) payload = writeChan chan payload

------------------------------------------------------------
-- Evaluation
------------------------------------------------------------

eval :: EvalM m => Exp -> m (Value m)
eval lam@(Lam _ _) = ClosureValue lam <$> getEnv
eval (Literal lit) = return (LiteralValue lit)
eval (App e1 e2) = do   
   v1 <- eval e1
   v2 <- eval e2 
   apply v1 v2
eval (Ite e1 e2 e3) = do 
   cnd <- eval e1
   case cnd of 
      LiteralValue (Boolean b) -> if b then eval e2 else eval e3
      _ -> error "condition should be boolean"
eval (Spawn e) = 
   ActorValue <$> spawnActor (flip withSelf (void $ eval e))
eval Terminate = 
   myThreadId >>= killThread >> return bottom
eval (Receive pats) = 
   receive (\v -> 
      let (env', e) = fromMaybe (error "no match found") (matchList pats v)
      in withMergedEnvironment env' (eval e))
eval (Send e1 e2) = do  
   receiver <- eval e1
   payload  <- eval e2
   trySend receiver payload
   return ValueNil
eval (Pair e1 e2) = 
   PairValue <$> eval e1 <*> eval e2
eval _ = error "unsupported expression"

trySend :: EvalM m => Value m -> Value m -> m ()
trySend (ActorValue ref) p = send ref p
trySend _ _ = error "receiver is not an actor reference"

apply :: EvalM m => Value m -> Value m -> m (Value m)
apply (ClosureValue (Lam (Ide x) e) env) v = 
   withEnv env (withExtendedEnv x v (eval e))
apply _ _ = error "not a closure"
   
-- | Matches a list of patterns (from top to bottom) 
-- against a value
matchList :: [(Pat, Exp)] -> Value m -> Maybe ((Env m), Exp)
matchList [] _ = Nothing
matchList ((pat, e):pats) value = 
   case match pat value of 
      Just v -> Just (v, e)
      _ -> matchList pats value

-- | Match a pattern against a value
match :: Pat -> Value m -> Maybe (Env m)
match (IdePat (Ide nam)) val = Just (Map.fromList [(nam, val)])
match (ValuePat val) (LiteralValue val')
   | val == val' = Just Map.empty
   | otherwise = Nothing
match (PairPat pat1 pat2) (PairValue v1 v2) = do
      m1 <- match pat1 v1
      m2 <- match pat2 v2
      return $ Map.unionWith (\v1' v2' -> if v1' == v2' then v1' else error "cannot map same variable to different values")
                                m1 m2
match _ _ = Nothing
