{-# LANGUAGE FlexibleInstances, RankNTypes, PolyKinds #-}
module Data.TypeLevel.HList((:::)(..), All(..), HList, L, MapSnd, MapList, MapHList) where

import Prelude hiding (all)
import Data.Kind

data a ::: b = a ::: b deriving (Eq, Ord)
infixr 5 :::

type family HList (l :: [Type]) where
   HList '[]       = ()
   HList (x ': xs) = x ::: HList xs

-- | Shorthand for HList
type L (l :: [Type]) = HList l

-- | Ensures that the given predicate succeeds on all elements of the 
-- list
class All f p where
   all :: (forall a . f a -> Bool) -> p -> Bool
instance All f () where
   all _ = const True
instance (All f r) => All f (f a ::: r) where
   all f (v ::: vs) = f v && all f vs

-- | Map the given type level function over the HList type
type family MapSnd (l :: [(Type, Type)]) where
   MapSnd '[] = '[]
   MapSnd ('(a, b) ': xs) = b ': MapSnd xs

type family MapList (f :: Type -> Type) (l :: [Type]) where
   MapList f '[] = '[]
   MapList f (x ': xs) = f x ': MapList f xs

type family MapHList (f :: Type -> Type) l where   
   MapHList f () = ()
   MapHList f (a ::: as) = f a ::: MapHList f as
