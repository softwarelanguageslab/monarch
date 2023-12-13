{-# LANGUAGE FlexibleContexts, FlexibleInstances, TypeFamilies, AllowAmbiguousTypes, DeriveFunctor #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE LambdaCase #-}
-- | This module provides a class of monads that are used to throw errors 
-- in the implementation of our abstract domains.
module Control.Monad.DomainError(DomainError(..), MonadEscape(..), MayEscapeT(..), MayEscape(Value)) where

import Control.Monad.Join
import Domain.Lattice (join, JoinLattice(..), Joinable, Domain(..))
import Data.Kind (Type)
import Control.Monad (ap)
import Data.Set (Set) 

-- | Errors in the abstract domain are represented as arbitrary strings
data DomainError = WrongType | IndexOutOfBounds | KeyNotFound | InvalidArgument 
   deriving (Eq, Ord, Show)

class Domain a DomainError => ErrorDomain a 

instance ErrorDomain (Set DomainError) 

-- | Monad to handle errors in the abstract domain
class MonadEscape m esc where
   type Esc m  :: Type     
   escape      :: JoinLattice a => esc -> m a
   catch       :: JoinLattice a => m a -> (Esc m -> m a) -> m a

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

newtype MayEscapeT m e a = MayEscapeT { runMayEscape :: m (MayEscape e a) }

instance (Monad m) => Functor (MayEscapeT m e) where
   fmap f (MayEscapeT ma) = MayEscapeT $ fmap (fmap f) ma  

instance (Monad m, Joinable e) => Applicative (MayEscapeT m e) where
   pure = MayEscapeT . return . Value
   (<*>) = ap

instance (Monad m, Joinable e) => Monad (MayEscapeT m e) where
   return = pure
   MayEscapeT m >>= f = MayEscapeT $ m >>= \case 
                                             Bottom      -> return Bottom
                                             Escape e    -> return $ Escape e
                                             Value v     -> runMayEscape $ f v 
                                             MayBoth v e -> addError e <$> runMayEscape (f v)

instance (Domain e esc, MonadJoin m) => MonadEscape (MayEscapeT m e) esc where
   type Esc (MayEscapeT m e) = e 
   escape = MayEscapeT . return . Escape . inject
   catch (MayEscapeT m) hdl = MayEscapeT $ m >>= handle
      where handle Bottom        = return Bottom
            handle (Escape e)    = runMayEscape (hdl e)
            handle suc@(Value _) = return suc
            handle (MayBoth v e) = handle (Value v) `mjoin` handle (Escape e)

instance (Eq e, Joinable e, MonadJoin m) => MonadJoin (MayEscapeT m e) where
    mzero = MayEscapeT mzero
    mjoin (MayEscapeT ma) (MayEscapeT mb) = MayEscapeT (mjoin ma mb)
