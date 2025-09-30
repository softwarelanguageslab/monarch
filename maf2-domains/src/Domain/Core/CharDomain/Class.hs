{-# LANGUAGE AllowAmbiguousTypes #-}
module Domain.Core.CharDomain.Class (CharDomain, CharLattice(..)) where

import Domain.Class 
import Control.Monad.AbstractM
import Domain.Core.BoolDomain

import Data.Kind 
import Lattice (Joinable)

type CharDomain c int = (Domain c Char, CharLattice c int)

class Joinable c => CharLattice c int where
   downcase :: AbstractM m => c -> m c
   upcase :: AbstractM m => c -> m c
   charToInt :: AbstractM m => c -> m int 
   isLower :: (AbstractM m, BoolDomain b) => c -> m b
   isUpper :: (AbstractM m, BoolDomain b) => c -> m b
   charEq :: (AbstractM m, BoolDomain b) => c -> c -> m b
   charLt :: (AbstractM m, BoolDomain b) => c -> c -> m b
   charEqCI :: (AbstractM m, BoolDomain b) => c -> c -> m b
   charLtCI :: (AbstractM m, BoolDomain b) => c -> c -> m b
