{-# LANGUAGE FlexibleContexts, FlexibleInstances, TypeFamilies, AllowAmbiguousTypes, DeriveFunctor #-}
module Control.Monad.Escape (MonadEscape(..), MayEscape(Value), MayEscapeT(..), orElse, try) where

import Lattice hiding (Bottom)
import Domain.Class 

import Control.Monad.Join
import Data.Kind (Type)
import Control.Monad (ap)
import Data.Set (Set) 
import Data.Functor ((<&>))

-- | Monad to handle errors in the abstract domain
class MonadEscape m where
   type Esc m
   escape :: (JoinLattice a, Domain (Esc m) e) => e -> m a 
   catch :: JoinLattice a => m a -> (Esc m -> m a) -> m a

orElse :: (MonadEscape m, JoinLattice a) => m a -> m a -> m a
orElse a = catch a . const  

try :: (MonadEscape m, JoinLattice a) => [m a] -> m a -> m a
try = flip $ foldr orElse 

------------------------------------------------------------
--- MayEscape
------------------------------------------------------------

data MayEscape e v = Bottom 
                   | Escape e 
                   | Value v
                   | MayBoth v e
   deriving (Eq, Ord, Functor)

addError :: Joinable e => e -> MayEscape e a -> MayEscape e a
addError _ Bottom = Bottom
addError e1 (Escape e2) = Escape (e1 `join` e2)
addError e (Value v) = MayBoth v e
addError e1 (MayBoth v e2) = MayBoth v (e1 `join` e2) 

instance (Joinable e, Joinable a) => Joinable (MayEscape e a) where
   join Bottom mf                         = mf
   join mf Bottom                         = mf
   join (Escape e1) (Escape e2)           = Escape (e1 `join` e2)
   join (Escape e) (Value v)              = MayBoth v e
   join (Escape e1) (MayBoth v e2)        = MayBoth v (e1 `join` e2)
   join (Value v) (Escape e)              = MayBoth v e
   join (Value v1) (Value v2)             = Value (v1 `join` v2)
   join (Value v1) (MayBoth v2 e)         = MayBoth (v1 `join` v2) e 
   join (MayBoth v e1) (Escape e2)        = MayBoth v (e1 `join` e2)
   join (MayBoth v1 e) (Value v2)         = MayBoth (v1 `join` v2) e
   join (MayBoth v1 e1) (MayBoth v2 e2)   = MayBoth (v1 `join` v2) (e1 `join` e2)

instance (Eq a, Eq e, Joinable a, Joinable e) => JoinLattice (MayEscape e a) where
   bottom = Bottom

------------------------------------------------------------
--- MayEscapeT
------------------------------------------------------------

newtype MayEscapeT e (m :: Type -> Type) a = MayEscapeT { runMayEscape :: m (MayEscape e a) }

instance (Monad m) => Functor (MayEscapeT e m) where
   fmap f (MayEscapeT ma) = MayEscapeT $ fmap (fmap f) ma  

instance (Monad m, Joinable e) => Applicative (MayEscapeT e m) where
   pure = MayEscapeT . return . Value
   (<*>) = ap

instance (Monad m, Joinable e) => Monad (MayEscapeT e m) where
   return = pure
   MayEscapeT m >>= f = MayEscapeT $ m >>= \case 
                                             Bottom      -> return Bottom
                                             Escape e    -> return $ Escape e
                                             Value v     -> runMayEscape (f v) 
                                             MayBoth v e -> runMayEscape (f v) <&> addError e

instance (MonadJoin m, Joinable e) => MonadEscape (MayEscapeT e m) where
   type Esc (MayEscapeT e m) = e 
   escape = MayEscapeT . return . Escape . inject
   catch (MayEscapeT m) hdl = MayEscapeT $ m >>= handle
      where handle Bottom        = return Bottom
            handle (Escape e)    = runMayEscape (hdl e)
            handle suc@(Value _) = return suc
            handle (MayBoth v e) = handle (Value v) `mjoin` handle (Escape e)

instance (Eq e, Joinable e, MonadJoin m) => MonadJoin (MayEscapeT e m) where
    mzero = MayEscapeT mzero
    mjoin (MayEscapeT ma) (MayEscapeT mb) = MayEscapeT (mjoin ma mb)


------------------------------------------------------------
-- Maybe instance for MonadEscape
------------------------------------------------------------

instance MonadEscape Maybe where 
   type Esc Maybe = ()
   escape = const Nothing
   -- NOTE: this is an overapproximation,
   -- we assume that an error can always occur in the `ma` 
   -- value because `mjoin Nothing (Just a)` = Just a
   -- and the error information is lost. Therefore
   -- we always have to pretend that a `Just a` 
   -- value could also have been an error
   catch ma f = mjoin ma (f ())

