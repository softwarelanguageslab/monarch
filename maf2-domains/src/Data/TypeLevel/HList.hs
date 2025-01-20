{-# LANGUAGE UndecidableInstances, AllowAmbiguousTypes #-}
module Data.TypeLevel.HList(
   HList(..), 
   nil, 
   ReverseList(..), 
   UnnestPair, 
   Uncons, 
   Unconses,
   Unnest, 
   unnest, 
   uncons
)  where

import Prelude hiding (reverse)
import Data.Kind

------------------------------------------------------------
-- HList Definition
------------------------------------------------------------

data HList :: [Type] -> Type where  
   -- | The empty list
   HNil  :: HList '[]
   -- | Cons an empty to the heterogenous list
   (:+:) :: a -> HList as -> HList (a ': as)

infixr 6 :+:

-- | Shorthand for @HNil@
nil  :: HList '[] 
nil  = HNil

------------------------------------------------------------
-- Reversing 
------------------------------------------------------------

type family ReverseAux (l :: [Type]) (o :: [Type]) where 
   ReverseAux '[] o = o
   ReverseAux (a ': as) o = ReverseAux as (a ': o)
type family Reverse (l :: [Type]) where
   Reverse l = ReverseAux l '[]

class ReverseList i' i o where 
   -- | Returns an HList with its elements reversed
   reverse :: HList i -> HList o -> HList (Reverse i')
instance (r ~ Reverse i') => ReverseList i' '[] r where  
   reverse = const id
instance (ReverseList i as (a ': o)) => ReverseList i (a ': as) o where
   reverse (a :+: as) o = reverse @i as (a :+: o)
   
------------------------------------------------------------
-- Unnest
------------------------------------------------------------

-- | Unnest a nested pair from right to left 
class UnnestPair' p where 
   unnest' :: p -> HList (Unnest' p)
instance {-# OVERLAPPING #-} UnnestPair' a => UnnestPair' (a, b) where
   unnest' (a, b) = b :+: unnest' a
instance (Unnest' a ~ '[a]) => UnnestPair' a where 
   unnest' a = a :+: nil

type family Unnest' p where 
   Unnest' (a, b) = b ': Unnest' a
   Unnest' a      = '[a]

type Unnest a = Reverse (Unnest' a)
type UnnestPair p = (UnnestPair' p, ReverseList (Unnest' p) (Unnest' p) '[])

-- | Turns tuples of, e.g., ((a, b), c) into '[a, b, c]
unnest :: forall p . (UnnestPair p) => p -> HList (Reverse (Unnest' p))
unnest p = reverse @(Unnest' p) (unnest' p) nil

------------------------------------------------------------
-- Uncons
------------------------------------------------------------

---- | Generate a left grown nested tuple type from a list
type family Unconses' (t :: [Type]) b where  
   Unconses' '[] b = b
   Unconses' (a ': as) b = Unconses' as (b, a)

type family Unconses (t :: [Type]) where    
   Unconses '[a] = a 
   Unconses (a ': as) = Unconses' as a

class Uncons (t :: [Type]) b where   
   uncons' :: HList t -> b -> Unconses' t b

instance Uncons '[] b where  
   uncons' HNil a = a
instance Uncons as (b, a) => Uncons (a ': as) b where  
   uncons' (a :+: as) b = uncons' as (b, a)

-- | Same as @uncons@ from Data.List but works on 
-- heteregenous lists of arbirary length
uncons :: Uncons ts t => HList (t ': ts) -> Unconses' ts t
uncons (a :+: as) = uncons' as a

