-- | Instance for @TopLifted@ of the @NumberDomain@ type classes
{-# LANGUAGE LambdaCase, UndecidableInstances #-}
module Domain.Core.NumberDomain.TopLifted() where

import Prelude hiding (div, ceiling, floor, round, log, sin, asin, cos, acos, tan, atan, sqrt)

import Domain.Core.BoolDomain.Class (BoolFor, boolTop)
import Domain.Core.NumberDomain.Class
import Lattice.TopLiftedLattice (TopLifted(..), fromTL)
import Lattice.Class

type instance BoolFor (TopLifted a) = BoolFor a

instance (NumberDomain a) => NumberDomain (TopLifted a) where    
   isZero = \case Top     -> pure $ boolTop
                  Value v -> isZero v 
   random  = sequenceA . fmap random
   plus  a = sequenceA . liftA2 plus a 
   minus a = sequenceA . liftA2 minus a
   times a = sequenceA . liftA2 times a
   div   a = sequenceA . liftA2 div a
   expt  a = sequenceA . liftA2 expt a
   eq    a = fmap (fromTL boolTop) . sequenceA . liftA2 eq a
   lt    a = fmap (fromTL boolTop) . sequenceA . liftA2 lt a


instance (IntDomain a, TopLattice (Rea a), TopLattice (Str a)) => IntDomain (TopLifted a) where
   type Str (TopLifted a) = Str a
   type Rea (TopLifted a) = Rea a

   toReal    = \case Top     -> pure $  top
                     Value v -> toReal v
   toString  = \case Top     -> pure $ top  
                     Value v -> toString v
   quotient  a = sequenceA . liftA2 quotient a
   modulo    a = sequenceA . liftA2 modulo a
   remainder a = sequenceA . liftA2 remainder a

instance (RealDomain a, TopLattice (IntR a)) => RealDomain (TopLifted a) where
   type IntR (TopLifted a) = IntR a
   toInt = fmap (fromTL top) . sequenceA . fmap toInt
   ceiling = sequenceA . fmap ceiling
   floor   = sequenceA . fmap floor 
   round   = sequenceA . fmap round 
   log     = sequenceA . fmap log
   sin     = sequenceA . fmap sin
   asin    = sequenceA . fmap asin
   cos     = sequenceA . fmap cos
   acos    = sequenceA . fmap acos
   tan     = sequenceA . fmap tan
   atan    = sequenceA . fmap atan
   sqrt    = sequenceA . fmap sqrt
