{-# LANGUAGE DeriveGeneric #-}
module Domain.Core.PairDomain.SimplePair (SimplePair(..)) where

import Lattice 
import Control.DeepSeq
import qualified Data.Set as Set
import GHC.Generics
import Domain.Core.PairDomain.Class 
import Lattice.Trace (Trace(..))

--import Domain.Core.PairDomain

data SimplePair c = SimplePair c c deriving (Eq, Show, Ord, Generic)

instance (NFData c) => NFData (SimplePair c)

instance (Joinable c) => Joinable (SimplePair c) where
   join (SimplePair car1 cdr1) (SimplePair car2 cdr2) =
      SimplePair (join car1 car2) (join cdr1 cdr2)

instance (BottomLattice c) => BottomLattice (SimplePair c) where
   bottom = SimplePair bottom bottom

instance (Trace adr c) => Trace adr (SimplePair c) where
   trace (SimplePair c1 c2) = Set.union (trace c1) (trace c2)

instance (Lattice c) => PairDomain (SimplePair c) where
   type Content (SimplePair c) = c
   car (SimplePair vcar _) = vcar
   cdr (SimplePair _ vcdr) = vcdr
   cons = SimplePair
