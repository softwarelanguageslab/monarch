{-# LANGUAGE FlexibleContexts, FlexibleInstances, UndecidableInstances, ConstraintKinds #-}
{-# OPTIONS_GHC -Wno-dodgy-exports #-}
{-# OPTIONS_GHC -Wno-orphans #-}
{-# OPTIONS_GHC -Wno-missing-signatures #-}

module Domain(
   JoinLattice(..),
   TopLattice(..),
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
   AbstractM,
   module Control.Monad.DomainError
) where

import Control.Monad.Join
import Domain.Lattice
import Data.Kind
import Data.Dynamic
import Control.Monad.DomainError

-- | Monad used for implementing abstract operations
type AbstractM m = (MonadDomainError m, MonadJoin m)

-- | An address is an abstraction for a memory location on which a heap-allocated address resides
class (Typeable a,  Show a, Eq a, Ord a) => Address a

-- | Raises error using `raiseError` if the given value is not in the domain
-- or returns () if it has not
domain :: (AbstractM m, BoolDomain b, JoinLattice a) => b -> String -> m a
domain b msg
   | isTrue b = raiseError $ DomainError msg
   | otherwise = mzero

class NumberDomain n where
   type Boo n :: Type
   isZero :: AbstractM m => n -> m (Boo n)
   random :: AbstractM m => n -> m n
   plus :: AbstractM m => n -> n -> m n
   minus :: AbstractM m => n -> n -> m n
   times :: AbstractM m => n -> n -> m n
   div :: AbstractM m => n -> n -> m n
   expt :: AbstractM m => n -> n -> m n
   lt :: AbstractM m => n -> n -> m (Boo n)
   equals :: AbstractM m => n -> n -> m (Boo n)

class (Domain i Integer, NumberDomain i) => IntDomain i where
   type Str i :: Type
   type Rea i :: Type

   toReal :: AbstractM m => i -> m (Rea i)
   toString :: AbstractM m => i -> m (Str i )
   quotient :: AbstractM m => i -> i -> m i
   modulo :: AbstractM m => i -> i -> m i
   remainder :: AbstractM m => i -> i -> m i

class (Domain s String) => StringDomain s where
   type IntS s :: Type
   type ChaS s :: Type
   type BooS s :: Type
   length :: AbstractM m => s -> m (IntS s)
   append :: AbstractM m => s -> s -> m s
   ref :: AbstractM m => s -> IntS s -> m (ChaS s)
   set :: AbstractM m => s -> IntS s -> ChaS s -> m s
   stringLt :: AbstractM m => s -> s -> m (BooS s)
   toNumber :: AbstractM m => s -> m (IntS s)
   makeString :: AbstractM m => IntS s -> ChaS s -> m s

class (Domain c Char) => CharDomain c where
   type IntC c :: Type

   downcase :: AbstractM m => c -> m c
   upcase :: AbstractM m => c -> m c
   charToInt :: AbstractM m => c -> m (IntC c)
   isLower :: (AbstractM m, BoolDomain b) => c -> m b
   isUpper :: (AbstractM m, BoolDomain b) => c -> m b
   charEq :: (AbstractM m, BoolDomain b) => c -> c -> m b
   charLt :: (AbstractM m, BoolDomain b) => c -> c -> m b
   charEqCI :: (AbstractM m, BoolDomain b) => c -> c -> m b
   charLtCI :: (AbstractM m, BoolDomain b) => c -> c -> m b

class (Domain r Double, NumberDomain r) => RealDomain r where
   type IntR r :: Type
   toInt :: AbstractM m => r -> m (IntR r)
   ceiling :: AbstractM m => r -> m r
   floor :: AbstractM m => r -> m r
   round :: AbstractM m => r -> m r
   log :: AbstractM m => r -> m r
   sin :: AbstractM m => r -> m r
   asin :: AbstractM m => r -> m r
   cos :: AbstractM m => r -> m r
   acos :: AbstractM m => r -> m r
   tan :: AbstractM m => r -> m r
   atan :: AbstractM m => r -> m r
   sqrt :: AbstractM m => r -> m r

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
   vectorRef :: AbstractM m => v -> VIndex v -> m (VContent v)
   vectorSet :: AbstractM m => v -> VIndex v -> VContent v -> m v
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
