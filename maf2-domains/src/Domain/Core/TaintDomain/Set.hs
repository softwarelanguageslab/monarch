{-# OPTIONS_GHC -Wno-orphans #-}

module Domain.Core.TaintDomain.Set where

import Domain.Core.TaintDomain.Class
import Data.Set (Set)
import qualified Data.Set as Set 

instance Ord a => TaintDomain (Set a) where
    empty = Set.empty 
    addTaints = Set.union 