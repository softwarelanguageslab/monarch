{-# OPTIONS_GHC -Wno-orphans #-}

module Domain.Core.CharDomain.Pair where

import Domain.Core.CharDomain.Class
import Lattice 

instance (CharLattice a ia, CharLattice b ib) => CharLattice (a, b) (ia, ib) where
  downcase (a, b) = liftA2 (,) (downcase @_ @ia a) (downcase @_ @ib b)
  upcase (a, b) = liftA2 (,) (upcase @_ @ia a) (upcase @_ @ib b)
  charToInt (a, b) = liftA2 (,) (charToInt a) (charToInt b)
  isLower (a, b) = productBool <$> isLower @_ @ia @_ @(CP Bool) a <*> isLower @_ @ib @_ @(CP Bool) b
  isUpper (a, b) = productBool <$> isUpper @_ @ia @_ @(CP Bool) a <*> isUpper @_ @ib @_ @(CP Bool) b
  charEq (a1, b1) (a2, b2) = productBool <$> charEq @_ @ia @_ @(CP Bool) a1 a2 <*> charEq @_ @ib @_ @(CP Bool) b1 b2 
  charLt (a1, b1) (a2, b2) = productBool <$> charLt @_ @ia @_ @(CP Bool) a1 a2 <*> charLt @_ @ib @_ @(CP Bool) b1 b2 
  charEqCI (a1, b1) (a2, b2) = productBool <$> charEqCI @_ @ia @_ @(CP Bool) a1 a2 <*> charEqCI @_ @ib @_ @(CP Bool) b1 b2 
  charLtCI (a1, b1) (a2, b2) = productBool <$> charLtCI @_ @ia @_ @(CP Bool) a1 a2 <*> charLtCI @_ @ib @_ @(CP Bool) b1 b2 

    