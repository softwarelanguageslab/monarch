{-# LANGUAGE FlexibleInstances #-}

{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE PolyKinds #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
-- | A store for Scheme-based analyses.
--
-- The store is divided into four parts: 
-- - a store for the variables of the program
-- - a store for storing the pairs allocated by the program
-- - a store for storing the vector allocated by the program
-- - a store for storing the strings allocated by the program
--
-- This module provides the monads needed for managing these 
-- stores during an analysis, as well as its allocation 
-- functions. Furthermore, two stores named `DSto` 
-- and `SSto`, refering to a 'SchemeStore' with and without 
-- SVars respecively, provide default store types for 
-- sensible address defaults (cf. 'Domain.Scheme.Store').
module Analysis.Scheme.Store(
) where

import Analysis.Monad
import Data.Singletons
import Control.Monad.Join
import Control.Monad.Layer

-- TODO: these two things should be moved elsewhere.
data Id :: k ~> k
type instance Apply Id (x :: k) = x

------------------------------------------------------------
-- Non-partitioned store
------------------------------------------------------------

-- | Layer to keep track of a store containing Scheme values.
--
-- It is parametrized by the type of address used in the
-- store to store its values at and the type of backing store.
newtype SchemeStoreT s adr vlu m a = SchemeStoreT { getSchemeStoreT :: StoreT s adr vlu m a } deriving (Functor, Applicative, Monad, MonadJoinable, MonadBottom, MonadCache, MonadLayer)
