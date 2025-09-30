{-# OPTIONS_GHC -Wno-orphans #-}

module Domain.Core.StringDomain.Pair where

import Domain.Core.StringDomain.Class (StringLattice(..))
import Prelude hiding (length)

instance (StringLattice a ba ia ca, StringLattice b bb ib cb) => StringLattice (a, b) (ba, bb) (ia, ib) (ca, cb) where
  length (a, b) = (,) <$> length @_ @ba @_ @ca a <*> length @_ @bb @ib @cb b  
  append (a1, b1) (a2, b2) = (,) <$> append @_ @ba @ia @ca a1 a2 <*> append @_ @bb @ib @cb b1 b2 
  ref (a, b) (ia, ib) = (,) <$> ref @_ @ba @_ @ca a ia <*> ref @_ @bb @_ @cb b ib 
  set (a, b) (ia, ib) (ca, cb) = (,) <$> set @_ @ba a ia ca <*> set @_ @bb b ib cb
  stringLt (a1, b1) (a2, b2) = (,) <$> stringLt @_ @ba @ia @ca a1 a2 <*> stringLt @_ @bb @ib @cb b1 b2 
  toNumber (a, b) = (,) <$> toNumber @_ @ba @_ @ca a <*> toNumber @_ @bb @_ @cb b
  makeString (ia, ib) (ca, cb) = (,) <$> makeString @_ @ba ia ca <*> makeString @_ @bb ib cb
  topString = (topString @_ @ba @ia @ca, topString @_ @bb @ib @cb)
    