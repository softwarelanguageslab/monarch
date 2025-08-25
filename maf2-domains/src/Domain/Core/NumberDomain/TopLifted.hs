-- | Instance for @TopLifted@ of the @NumberDomain@ type classes
{-# LANGUAGE LambdaCase, UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}

module Domain.Core.NumberDomain.TopLifted() where

import Prelude hiding (div, ceiling, floor, round, log, sin, asin, cos, acos, tan, atan, sqrt)

import Domain.Core.BoolDomain.Class
import Domain.Core.NumberDomain.Class
import Lattice.TopLiftedLattice (TopLifted(..), fromTL)
import Lattice.Class

instance (NumberLattice a bln, BoolDomain bln) => NumberLattice (TopLifted a) bln where
   isZero  = fmap (fromTL boolTop) . traverse isZero
   random  = traverse (random @_ @bln)
   plus  a = sequenceA . liftA2 (plus @_ @bln) a
   minus a = sequenceA . liftA2 (minus @_ @bln) a
   times a = sequenceA . liftA2 (times @_ @bln) a
   div   a = sequenceA . liftA2 (div @_ @bln) a
   expt  a = sequenceA . liftA2 (expt @_ @bln) a
   eq    a = fmap (fromTL boolTop) . sequenceA . liftA2 eq a
   lt    a = fmap (fromTL boolTop) . sequenceA . liftA2 lt a


instance (IntLattice a bln str rea, TopLattice rea, TopLattice str, BoolDomain bln) => IntLattice (TopLifted a) bln str rea where
   toReal    = \case Top     -> pure top
                     Value v -> (toReal @_ @bln @str @rea) v
   toString  = \case Top     -> pure top
                     Value v -> (toString @_ @bln @str @rea) v
   quotient  a = sequenceA . liftA2 (quotient @_ @bln @str @rea) a
   modulo    a = sequenceA . liftA2 (modulo @_ @bln @str @rea) a
   remainder a = sequenceA . liftA2 (remainder @_ @bln @str @rea) a

instance (RealLattice a bln int, TopLattice int, BoolDomain bln) => RealLattice (TopLifted a) bln int where
   toInt = fmap (fromTL top) . traverse (toInt @_ @bln @int)
   ceiling = traverse (ceiling @_ @bln @int)
   floor   = traverse (floor @_ @bln @int)
   round   = traverse (round @_ @bln @int)
   log     = traverse (log @_ @bln @int)
   sin     = traverse (sin @_ @bln @int)
   asin    = traverse (asin @_ @bln @int)
   cos     = traverse (cos @_ @bln @int)
   acos    = traverse (acos @_ @bln @int)
   tan     = traverse (tan @_ @bln @int)
   atan    = traverse (atan @_ @bln @int)
   sqrt    = traverse (sqrt @_ @bln @int)
