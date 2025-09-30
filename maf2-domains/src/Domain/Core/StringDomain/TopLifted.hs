{-# OPTIONS_GHC -Wno-orphans #-}
module Domain.Core.StringDomain.TopLifted() where

import Lattice.TopLiftedLattice
import Lattice.Class (TopLattice (..))
import Domain.Core.StringDomain.Class
import Prelude hiding (length)

instance (TopLattice bln, TopLattice int, TopLattice chr, StringDomain a bln int chr) => StringLattice (TopLifted a) bln int chr where
  length = fmap (fromTL top) . traverse (length @_ @bln @int @chr)
  append a = sequenceA . liftA2 (append @_ @bln @int @chr) a
  ref s i = fromTL top <$> traverse (flip (ref @_ @bln @int @chr) i) s
  set s i c = traverse (\s' -> (set @_ @bln @int @chr) s' i c) s
  stringLt s1 = fmap (fromTL top) . sequenceA . liftA2 (stringLt @_ @bln @int @chr) s1
  toNumber = fmap (fromTL top) . traverse (toNumber @_ @bln @int @chr)
  makeString i = fmap pure . makeString @_ @bln @int @chr i
  topString = Top

