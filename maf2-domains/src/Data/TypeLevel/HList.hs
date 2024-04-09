{-# LANGUAGE UndecidableInstances, AllowAmbiguousTypes #-}
module Data.TypeLevel.HList where

import Prelude hiding (reverse)
import Data.Kind

data HList :: [Type] -> Type where
   HNil  :: HList '[]
   (:+:) :: a -> HList as -> HList (a ': as)

type family ReverseAux (l :: [Type]) (o :: [Type]) where 
   ReverseAux '[] o = o
   ReverseAux (a ': as) o = ReverseAux as (a ': o)
type family Reverse (l :: [Type]) where
   Reverse l = ReverseAux l '[]

class ReverseList i' i o where 
   reverse :: HList i -> HList o -> HList (Reverse i')
instance (r ~ Reverse i') => ReverseList i' '[] r where  
   reverse = const id
instance (ReverseList i as (a ': o)) => ReverseList i (a ': as) o where
   reverse (a :+: as) o = reverse @i as (a :+: o)
   

infixr 6 :+:

nil  :: HList '[] 
nil  = HNil

-- | Unnest a nested pair from right to left 
class UnnestPair' p where 
   unnest' :: p -> HList (Unnest' p)
instance {-# OVERLAPPING #-} UnnestPair' a => UnnestPair' (a, b) where
   unnest' (a, b) = b :+: unnest' a
instance (Unnest' a ~ '[a]) => UnnestPair' a where 
   unnest' a = a :+: nil

type family Unnest' p where 
   Unnest' (a, b) = b ': (Unnest' a)
   Unnest' a      = '[a]

type Unnest a = Reverse (Unnest' a)
type UnnestPair p = (UnnestPair' p, ReverseList (Unnest' p) (Unnest' p) '[])

unnest :: forall p . (UnnestPair p) => p -> HList (Reverse (Unnest' p))
unnest p = reverse @(Unnest' p) (unnest' p) nil
