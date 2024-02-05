{-# LANGUAGE FlexibleContexts, UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-dodgy-exports #-}
{-# OPTIONS_GHC -Wno-orphans #-}
module Control.Monad.Error (MonadError(..), Error(..)) where

import Data.Set (Set)
import qualified Data.Set as Set
import Control.Monad.Writer hiding (join)
import Control.Monad.Trans.Maybe
import Control.Monad.Join
import Control.Monad.DomainError
import Lattice

newtype Error = StringError String deriving (Eq, Ord, Show)

class (Monad m) => MonadError m where
   -- | Raises the given error and halts the computation
   raiseError :: DomainError -> m a
   -- | Calls the supplied function with the set of erors
   -- encountered in computation `m a` and replaces them 
   -- with a single error.
   reraiseError :: (Set DomainError -> DomainError) -> m a -> m a
   -- | Can be used to ignore the errors,
   -- returns a boolean to indicate whether errors where ignored or not
   hasError :: m () -> m Bool

-- An error in `MaybeT` halts the computation and writes the 
-- errors to a set that can be consulted after the analysis.
instance (MonadWriter (Set DomainError) m) => MonadError (MaybeT m) where
   raiseError e = tell (Set.singleton e) >> MaybeT (return Nothing)
   reraiseError f = censor (\err -> if err /= Set.empty then Set.singleton (f err) else err)
   hasError ma = censor (const Set.empty) $ MaybeT $ do 
      ma' <- runMaybeT (listen ma)
      maybe (return (Just True)) (\(_, err) -> return (Just (err /= Set.empty))) ma'

instance (MonadWriter (Set DomainError) m) => MonadJoinAlternative (MaybeT m) where
   ma <|> mb = MaybeT $ do
      result <- runMaybeT (listen ma)
      maybe (runMaybeT mb) (\(v, err) -> do
                                 v' <- runMaybeT mb
                                 if err == Set.empty
                                 then return v'
                                 else return (maybe (Just bottom) (Just . join v) v')) result
