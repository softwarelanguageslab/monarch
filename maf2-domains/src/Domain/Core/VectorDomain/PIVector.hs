{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module Domain.Core.VectorDomain.PIVector (PIVector(..)) where

import Lattice 
import Domain.Core.VectorDomain.Class 
import Domain.Core.NumberDomain.Class 
import Control.Monad.Join 
import Control.Monad.DomainError
import Control.Monad.Escape
import Control.DeepSeq
import GHC.Generics
import Lattice.Trace (Trace(..))
import qualified Data.Set as Set

-- position insensitive vector
data PIVector i c bln str rea = PIVector i c deriving (Show, Eq, Ord, Generic)

instance (NFData i, NFData c) => NFData (PIVector i c bln str rea)

instance (Joinable i, Joinable c) => Joinable (PIVector i c bln str rea) where
   join (PIVector i1 c1) (PIVector i2 c2) =
      PIVector (join i1 i2) (join c1 c2)

instance (BottomLattice i, BottomLattice c) => BottomLattice (PIVector i c bln str rea) where
   bottom = PIVector bottom bottom
   -- TODO: see whether this is more efficient than the standard instance 
   -- for PartialOrder
   -- subsumes (PIVector i1 c1) (PIVector i2 c2) =
   --    subsumes i1 i2 && subsumes c1 c2

instance (Trace adr i, Trace adr c) => Trace adr (PIVector i c bln str rea) where
   trace (PIVector i c) = Set.union (trace i) (trace c)

instance (IntDomain i bln str rea, Eq c, Joinable c) => VectorDomain (PIVector i c bln str rea) where
   type VContent (PIVector i c bln str rea) = c
   type VIndex   (PIVector i c bln str rea) = i

   vectorRef vec@(PIVector _ c) idx =
      cond (lt @i @bln (vectorLength vec) idx)
           (escape IndexOutOfBounds)
           (return c)

   vectorSet vec@(PIVector i c) idx new =
      cond (lt @i @bln (vectorLength vec) idx)
           (escape IndexOutOfBounds)
           (return (PIVector i (join new c)))

   vectorLength (PIVector i _) = i

   makeVector = PIVector
