{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}

module Domain.Core.NumberDomain.Pair where

import Domain.Core.NumberDomain.Class (NumberLattice(..), IntLattice (..), RealLattice (..))
import Lattice.ProductLattice ()
import Domain.Core.BoolDomain.Pair ()
import Prelude hiding (div, ceiling, floor, round, log, sqrt, sin, cos, tan, asin, acos, atan)

instance (NumberLattice a ab, NumberLattice b bb) => NumberLattice (a, b) (ab, bb) where 
  isZero (a, b) = (,) <$> isZero @_ @ab a <*> isZero @_ @bb b 
  random (a, b) = (,) <$> random @_ @ab a <*> random @_ @bb b 
  plus (a1, b1) (a2, b2) = (,) <$> plus @_ @ab a1 a2 <*> plus @_ @bb b1 b2  
  minus (a1, b1) (a2, b2) = (,) <$> minus @_ @ab a1 a2 <*> minus @_ @bb b1 b2 
  times (a1, b1) (a2, b2) = (,) <$> times @_ @ab a1 a2 <*> times @_ @bb b1 b2 
  div (a1, b1) (a2, b2) = (,) <$> div @_ @ab a1 a2 <*> div @_ @bb b1 b2 
  expt (a1, b1) (a2, b2) = (,) <$> expt @_ @ab a1 a2 <*> expt @_ @bb b1 b2 
  eq (a1, b1) (a2, b2) = (,) <$> eq a1 a2 <*> eq b1 b2 
  ne (a1, b1) (a2, b2) = (,) <$> ne a1 a2 <*> eq b1 b2 
  lt (a1, b1) (a2, b2) = (,) <$> lt a1 a2 <*> lt b1 b2 
  gt (a1, b1) (a2, b2) = (,) <$> gt a1 a2 <*> gt b1 b2 
  ge (a1, b1) (a2, b2) = (,) <$> ge a1 a2 <*> ge b1 b2
  le (a1, b1) (a2, b2) = (,) <$> le a1 a2 <*> le b1 b2 

instance (IntLattice a ba sa ra, IntLattice b bb sb rb) => IntLattice (a,b) (ba,bb) (sa,sb) (ra,rb) where
  inc (a, b) = (,) <$> inc @_ @ba @sa @ra a <*> inc @_ @bb @sb @rb b
  toReal (a, b) = (,) <$> toReal @_ @ba @sa a <*> toReal @_ @bb @sb b 
  toString (a, b) = (,) <$> toString @_ @ba @_ @ra a <*> toString @_ @bb @_ @rb b 
  quotient (a1, b1) (a2, b2) = (,) <$> quotient @_ @ba @sa @ra a1 a2 <*> quotient @_ @bb @sb @rb b1 b2
  modulo (a1, b1) (a2, b2) = (,) <$> modulo @_ @ba @sa @ra a1 a2 <*> modulo @_ @bb @sb @rb b1 b2 
  remainder (a1, b1) (a2, b2) = (,) <$> remainder @_ @ba @sa @ra a1 a2 <*> remainder @_ @bb @sb @rb b1 b2 

instance (RealLattice a ba ia, RealLattice b bb ib) => RealLattice (a, b) (ba, bb) (ia, ib) where
  toInt (a, b) = (,) <$> toInt @_ @ba @ia a <*> toInt @_ @bb @ib b 
  ceiling (a, b) = (,) <$> ceiling @_ @ba @ia a <*> ceiling @_ @bb @ib b 
  floor (a, b) = (,) <$> floor @_ @ba @ia a <*> floor @_ @bb @ib b 
  round (a, b) = (,) <$> round @_ @ba @ia a <*> round @_ @bb @ib b
  log (a, b) = (,) <$> log @_ @ba @ia a <*> log @_ @bb @ib b
  sin (a, b) = (,) <$> sin @_ @ba @ia a <*> sin @_ @bb @ib b 
  asin (a, b) = (,) <$> asin @_ @ba @ia a <*> asin @_ @bb @ib b 
  cos (a, b) = (,) <$> cos @_ @ba @ia a <*> cos @_ @bb @ib b 
  acos (a, b) = (,) <$> acos @_ @ba @ia a <*> acos @_ @bb @ib b 
  tan (a, b) = (,) <$> tan @_ @ba @ia a <*> tan @_ @bb @ib b 
  atan (a, b) = (,) <$> atan @_ @ba @ia a <*> atan @_ @bb @ib b 
  sqrt (a, b) = (,) <$> sqrt @_ @ba @ia a <*> sqrt @_ @bb @ib b 