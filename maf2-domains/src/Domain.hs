{-# LANGUAGE FlexibleContexts, FlexibleInstances, UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-dodgy-exports #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}

module Domain(
   JoinLattice(..),
   IntDomain(..),
   StringDomain(..),
   NumberDomain(..),
   Domain(..),
   CharDomain(..),
   BoolDomain(..),
   RealDomain(..),
   domain,
   SplitLattice(..),
   PairDomain(..),
   VectorDomain(..),
   SimplePair,
   PIVector,
   justOrBot,
   Address(..),
   Joinable(..),
   module Control.Monad.DomainError
) where

import Control.Monad.Join
import Domain.Lattice
import Data.Kind
import Control.Monad.DomainError

-- | An address is an abstraction for a memory location on which a heap-allocated address resides
class (Show a, Ord a) => Address a where
  -- | The type of the value referenced by the addresses
  type Vlu a :: Type

-- | Raises error using `raiseError` if the given value is not in the domain
-- or returns () if it has not
domain :: (MonadDomainError m, BoolDomain b, JoinLattice a) => b -> String -> m a
domain b msg
   | isTrue b = raiseError $ DomainError msg
   | otherwise = mzero

class NumberDomain n where
   type Boo n :: Type
   isZero :: MonadDomainError m => n -> m (Boo n)
   random :: MonadDomainError m => n -> m n
   plus :: MonadDomainError m => n -> n -> m n
   minus :: MonadDomainError m => n -> n -> m n
   times :: MonadDomainError m => n -> n -> m n
   div :: MonadDomainError m => n -> n -> m n
   expt :: MonadDomainError m => n -> n -> m n
   lt :: MonadDomainError m => n -> n -> m (Boo n)
   equals :: MonadDomainError m => n -> n -> m (Boo n)

class (Domain i Integer, NumberDomain i) => IntDomain i where
   type Str i :: Type
   type Rea i :: Type

   toReal :: MonadDomainError m => i -> m (Rea i)
   toString :: MonadDomainError m => i -> m (Str i )
   quotient :: MonadDomainError m => i -> i -> m i
   modulo :: MonadDomainError m => i -> i -> m i
   remainder :: MonadDomainError m => i -> i -> m i

class (Domain s String) => StringDomain s where
   type IntS s :: Type
   type ChaS s :: Type
   type BooS s :: Type
   length :: MonadDomainError m => s -> m (IntS s)
   append :: MonadDomainError m => s -> s -> m s
   ref :: MonadDomainError m => s -> IntS s -> m (ChaS s)
   set :: MonadDomainError m => s -> IntS s -> ChaS s -> m s
   stringLt :: MonadDomainError m => s -> s -> m (BooS s)
   toNumber :: MonadDomainError m => s -> m (IntS s)
   makeString :: MonadDomainError m => IntS s -> ChaS s -> m s

class (Domain c Char) => CharDomain c where
   type IntC c :: Type

   downcase :: MonadDomainError m => c -> m c
   upcase :: MonadDomainError m => c -> m c
   charToInt :: MonadDomainError m => c -> m (IntC c)
   isLower :: (MonadDomainError m, BoolDomain b) => c -> m b
   isUpper :: (MonadDomainError m, BoolDomain b) => c -> m b
   charEq :: (MonadDomainError m, BoolDomain b) => c -> c -> m b
   charLt :: (MonadDomainError m, BoolDomain b) => c -> c -> m b
   charEqCI :: (MonadDomainError m, BoolDomain b) => c -> c -> m b
   charLtCI :: (MonadDomainError m, BoolDomain b) => c -> c -> m b

class (Domain r Double, NumberDomain r) => RealDomain r where
   type IntR r :: Type
   toInt :: MonadDomainError m => r -> m (IntR r)
   ceiling :: MonadDomainError m => r -> m r
   floor :: MonadDomainError m => r -> m r
   round :: MonadDomainError m => r -> m r
   log :: MonadDomainError m => r -> m r
   sin :: MonadDomainError m => r -> m r
   asin :: MonadDomainError m => r -> m r
   cos :: MonadDomainError m => r -> m r
   acos :: MonadDomainError m => r -> m r
   tan :: MonadDomainError m => r -> m r
   atan :: MonadDomainError m => r -> m r
   sqrt :: MonadDomainError m => r -> m r

------ 

class (JoinLattice p, JoinLattice (Content p)) => PairDomain p where
   type Content p :: Type
   car   :: p -> Content p
   cdr   :: p -> Content p
   cons  :: Content p -> Content p -> p

data SimplePair c = SimplePair c c deriving (Eq, Show, Ord)

instance (Joinable c) => Joinable (SimplePair c) where
   join (SimplePair car1 cdr1) (SimplePair car2 cdr2) =
      SimplePair (join car1 car2) (join cdr1 cdr2)

instance (JoinLattice c) => JoinLattice (SimplePair c) where
   bottom = SimplePair bottom bottom
   subsumes (SimplePair car1 cdr1) (SimplePair car2 cdr2) =
      subsumes car1 car2 && subsumes cdr1 cdr2

instance (JoinLattice c) => PairDomain (SimplePair c) where
   type Content (SimplePair c) = c
   car (SimplePair vcar _) = vcar
   cdr (SimplePair _ vcdr) = vcdr
   cons = SimplePair

------

class (JoinLattice v) => VectorDomain v where
   type VContent v :: Type
   type VIndex   v :: Type

   makeVector :: VIndex v -> VContent v -> v
   vectorRef :: MonadDomainError m => v -> VIndex v -> m (VContent v)
   vectorSet :: MonadDomainError m => v -> VIndex v -> VContent v -> m v
   vectorLength :: v -> VIndex v

-- position insensitive vector
data PIVector i c = PIVector i c deriving (Show, Eq, Ord)

instance (Joinable i, Joinable c) => Joinable (PIVector i c) where
   join (PIVector i1 c1) (PIVector i2 c2) =
      PIVector (join i1 i2) (join c1 c2)

instance (JoinLattice i, JoinLattice c) => JoinLattice (PIVector i c) where
   bottom = PIVector bottom bottom
   subsumes (PIVector i1 c1) (PIVector i2 c2) =
      subsumes i1 i2 && subsumes c1 c2

instance (IntDomain i, BoolDomain (Boo i), JoinLattice c) => VectorDomain (PIVector i c) where
   type VContent (PIVector i c) = c
   type VIndex   (PIVector i c) = i

   vectorRef vec@(PIVector _ c) idx =
      cond (lt (vectorLength vec) idx)
           (raiseError $ DomainError "index out of bounds")
           (return c)

   vectorSet vec@(PIVector i c) idx new =
      cond (lt (vectorLength vec) idx)
           (raiseError $ DomainError "index out of bounds")
           (return (PIVector i (join new c)))

   vectorLength (PIVector i _) = i

   makeVector = PIVector

---
