{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Analysis.Monad.Fix (lfp, MonadFixpoint (..), FixT (..), Kleisli, runFixT, runAroundT) where

import Analysis.Monad.Cache
import Analysis.Monad.ComponentTracking (ComponentTrackingM)
import qualified Analysis.Monad.ComponentTracking as CT
import Analysis.Monad.Map (MapM (..))
import Control.Monad.Escape (MonadEscape (..))
import Control.Monad.Identity (IdentityT (IdentityT))
import Control.Monad.Join (MonadJoinable, MonadJoin)
import Control.Monad.Layer (MonadLayer(..))
import Analysis.Monad.WorkList (WorkListM(..), iterateWL)
import Control.Monad.Reader

-- | Type of Kleisli arrows, distinct from `Kleisli` newtype from
-- the standard library.
type Kleisli m a b = a -> m b

-- | Fixpoint operator over Kleisli arrows
class MonadFixpoint m b c | m -> b c where
  fix :: (Kleisli m b c -> Kleisli m b c) -> Kleisli m b c

------------------------------------------------------------
-- ModX fixpoint
------------------------------------------------------------

-- |  ModX fixpoint monad transformer
newtype FixT b c m a = FixT {runFixT' :: IdentityT m a}
  deriving (MonadCache, MonadTrans, MonadLayer, Monad, Applicative, Functor, MonadJoinable, MonadEscape)

runFixT :: forall m b c. (MonadCache m, MapM (Key m b) (Val m c) (Base m)) => (b -> FixT b c m c) -> Key m b -> Base m ()
runFixT f kb = cache @(FixT b c m) @b kb f

instance
  ( MonadJoin m,
    MonadCache m,
    ComponentTrackingM m (Key m b),
    MapM (Key m b) (Val m c) m
  ) =>
  MonadFixpoint (FixT b c m) b c
  where
  fix f = f CT.call

type Around m b c = (Kleisli (AroundT b c m) b c -> Kleisli (AroundT b c m) b c)

-- | Instrument function calling
newtype AroundT b c m a = AroundT { runAroundT' ::  ReaderT (Around m b c) m a }
                        deriving (Applicative, Monad, MonadReader (Around m b c), Functor, MonadJoinable)


-- Around works like `FixT` but executes the `Around` function first and then calls to `CT.call
instance
  ( MonadJoin m,
    MonadCache m,
    ComponentTrackingM m (Key m b),
    MapM (Key m b) (Val m c) m
  ) => MonadFixpoint (AroundT b c m) b c 
  where 
  fix f b = do 
      around <- ask
      f (around (lift . CT.call)) b

-- Required monad instances

instance MonadTrans (AroundT b c) where
   lift = AroundT . ReaderT . const
instance MonadLayer (AroundT b c) where
   upperM = lift
   lowerM f = AroundT . lowerM f . runAroundT'
instance (MonadEscape m, Monad m) => MonadEscape (AroundT b c m) where 
   type Esc (AroundT b c m) = Esc m
   throw = upperM . throw
   catch (AroundT m) f = AroundT $ ReaderT $ \r -> runReaderT m r `catch` (flip runReaderT r . runAroundT' . f)

-- | Run the analysis with the given instrumented evaluation function
runAroundT :: Around m b c -> AroundT b c m a -> m a
runAroundT f (AroundT m) = runReaderT m f

-- | Compute the least fixed point for the given (initial) component
lfp :: (WorkListM m a) => (a -> m b) -> a ->  m ()
lfp f initialCmp = add initialCmp >> iterateWL f
