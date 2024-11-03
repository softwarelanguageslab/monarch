{-# LANGUAGE UndecidableInstances #-}
module Domain.Core.VectorDomain.PIVector (PIVector(..)) where

import Lattice 
import Domain.Core.VectorDomain.Class 
import Domain.Core.NumberDomain.Class 
import Control.Monad.Join 
import Control.Monad.DomainError
import Control.Monad.Escape
import Control.DeepSeq
import GHC.Generics

-- position insensitive vector
data PIVector i c = PIVector i c deriving (Show, Eq, Ord, Generic)

instance (NFData i, NFData c) => NFData (PIVector i c)

instance (Joinable i, Joinable c) => Joinable (PIVector i c) where
   join (PIVector i1 c1) (PIVector i2 c2) =
      PIVector (join i1 i2) (join c1 c2)

instance (BottomLattice i, BottomLattice c) => BottomLattice (PIVector i c) where
   bottom = PIVector bottom bottom
   -- TODO: see whether this is more efficient than the standard instance 
   -- for PartialOrder
   -- subsumes (PIVector i1 c1) (PIVector i2 c2) =
   --    subsumes i1 i2 && subsumes c1 c2

instance (IntDomain i, Eq c, Joinable c) => VectorDomain (PIVector i c) where
   type VContent (PIVector i c) = c
   type VIndex   (PIVector i c) = i

   vectorRef vec@(PIVector _ c) idx =
      cond (lt (vectorLength vec) idx)
           (escape IndexOutOfBounds)
           (return c)

   vectorSet vec@(PIVector i c) idx new =
      cond (lt (vectorLength vec) idx)
           (escape IndexOutOfBounds)
           (return (PIVector i (join new c)))

   vectorLength (PIVector i _) = i

   makeVector = PIVector
