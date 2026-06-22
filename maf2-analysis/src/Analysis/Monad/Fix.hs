{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
-- | Worklist based least-fixed point algorithms
module Analysis.Monad.Fix (lfp, MonadFixpoint (..), FixT (..), Kleisli, runFixT, AroundT, runAroundT, runAroundFixT) where

import Analysis.Monad.Cache
import Analysis.Monad.ComponentTracking (ComponentTrackingM)
import qualified Analysis.Monad.ComponentTracking as CT
import Analysis.Monad.Map (MapM (..))
import Control.Monad.Escape (MonadEscape (..))
import Control.Monad.Identity (IdentityT (..))
import Control.Monad.Join (MonadJoinable, MonadJoin)
import Control.Monad.Layer (MonadLayer(..))
import Analysis.Monad.WorkList (WorkListM(..), iterateWL)
import Control.Monad.Reader
import Lattice.Class (Joinable)
import Control.Monad.Choice (MonadChoice (..))

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
instance (MonadChoice bool m) => MonadChoice bool (FixT b c m) where 
    choice b ma mb = FixT $ IdentityT $ choice b (runIdentityT (runFixT' ma)) (runIdentityT (runFixT' mb))

runFixT :: forall m b c. (Ord c, MonadCache m, Joinable (Val m c), MapM (Key m b) (Val m c) (Base m)) => (b -> FixT b c m c) -> Key m b -> Base m ()
runFixT f kb = cache' @(FixT b c m) @b kb f

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

instance (MonadChoice bool m) => MonadChoice bool (AroundT b c m) where
   choice b ma mb = AroundT $ ReaderT $ \r ->
      choice b (runReaderT (runAroundT' ma) r) (runReaderT (runAroundT' mb) r)
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

-- | 'MonadCache' instance for 'AroundT'.
--
-- The instance is transparent: the 'Around' reader environment is /not/ part of
-- the cache key (unlike the generic 'ReaderT' instance), so caching behaves
-- exactly like 'FixT'. The reader is discharged inside 'run' using the env that
-- 'runAroundFixT' threads in. Only 'MonadFixpoint.fix' differs from 'FixT': it
-- wraps every recursive call with the 'Around' function (see the instance
-- above), which is what makes the instrumentation apply to all component calls,
-- not just the entry component.
instance MonadCache m => MonadCache (AroundT b c m) where
  type Key (AroundT b c m) k = Key m k
  type Val (AroundT b c m) v = Val m v
  type Base (AroundT b c m) = ReaderT (Around m b c) (Base m)
  key = upperM . key
  val = upperM . val
  {-# INLINE run #-}
  run f kb = ReaderT $ \around ->
    run (\k -> runReaderT (runAroundT' (f k)) around) kb

-- | 'runFixT' analogue for 'AroundT': run the cache-driven fixpoint with the
-- recursive calls instrumented by the given 'Around' function.
runAroundFixT :: forall m b c.
                 (Ord c, MonadCache m, Joinable (Val m c), MapM (Key m b) (Val m c) (Base m))
              => Around m b c
              -> (b -> AroundT b c m c)
              -> Key m b
              -> Base m ()
runAroundFixT around f kb =
  runReaderT (cache' @(AroundT b c m) @b kb f) around

-- | Compute the least fixed point for the given (initial) component
lfp :: (WorkListM m a) => (a -> m b) -> a ->  m ()
lfp f initialCmp = add initialCmp >> iterateWL f
