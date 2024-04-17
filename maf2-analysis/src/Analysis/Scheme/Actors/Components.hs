-- Component for a modular (effect-driven) analysis of actor programs
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

module Analysis.Scheme.Actors.Components (Component (..), runSpawnT, runCallT) where

import Analysis.Actors.Monad (ActorBehaviorM (..), ActorLocalM (self))
import Analysis.Monad
import Control.Fixpoint.EffectDriven (EffectSVarM)
import qualified Control.Fixpoint.EffectDriven as EF
import Control.Monad.Identity
import Control.Monad.Join
import Control.Monad.Layer
import Control.Monad.Trans.Class
import Domain.Scheme (ActorDomain (ARef, aref))
import Domain.Scheme.Actors.CP
import Domain.Scheme.Store
import Syntax.Scheme (Exp (Lam))

data Component k
  = Main !Exp
  | Actor !(Pid k) !Exp !k !(Env k)
  deriving (Eq, Ord, Show)

newtype CallT v k m a = CallT (IdentityT m a)
  deriving (Applicative, Functor, Monad, MonadJoin, MonadTrans, MonadLayer)

instance
  {-# OVERLAPPING #-}
  ( EffectSVarM m (Component k),
    CtxM m k,
    StoreM m (Component k) v, -- return values
    ActorLocalM m (Pid k) msg mb,
    EnvM m (EnvAdr k) (Env k)
  ) =>
  CallM (CallT v k m) (Env k) v
  where
  call (Lam _ bdy _, _) = do
    env' <- upperM getEnv
    ctx' <- upperM getCtx
    pid <- upperM self
    let comp = Actor pid bdy ctx' env'
    upperM $ EF.spawn comp
    lookupAdr comp
  call _ = error "invalid call"


runCallT :: forall v k m a . CallT v k m a -> m a 
runCallT (CallT m) = runIdentityT m

newtype SpawnT v m a = SpawnT (IdentityT m a)
  deriving (Applicative, Functor, Monad, MonadJoin, MonadTrans, MonadLayer)

instance
  {-# OVERLAPPING #-}
  ( ActorDomain v,
    ARef v ~ Pid k,
    CtxM m k,
    EnvM m (EnvAdr k) (Env k),
    EffectSVarM m (Component k)
  ) =>
  ActorBehaviorM (SpawnT v m) v
  where
  spawn e = do
    env' <- getEnv
    ctx' <- getCtx
    upperM (EF.spawn $ Actor (Pid e ctx') e ctx' env')
    return (aref (Pid e ctx'))
  become = void . spawn

runSpawnT :: SpawnT v m a -> m a
runSpawnT (SpawnT m) = runIdentityT m
