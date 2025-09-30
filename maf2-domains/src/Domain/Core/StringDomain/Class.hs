{-# LANGUAGE AllowAmbiguousTypes #-}

module Domain.Core.StringDomain.Class where

import Lattice 
import Domain.Class 
import Control.Monad.AbstractM

import Data.Kind 

type StringDomain s bln int chr = (StringLattice s bln int chr, Domain s String)

class (Joinable s) => StringLattice s bln int chr where
   length :: AbstractM m => s -> m int 
   append :: AbstractM m => s -> s -> m s
   ref :: AbstractM m => s -> int -> m chr
   set :: AbstractM m => s -> int -> chr -> m s
   stringLt :: AbstractM m => s -> s -> m bln
   toNumber :: AbstractM m => s -> m int
   makeString :: AbstractM m => int -> chr -> m s
   topString  :: s
