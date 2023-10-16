{-# LANGUAGE FlexibleContexts, FlexibleInstances, AllowAmbiguousTypes, UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
module Data.LabeledProduct(Products, LabeledProduct(..), get, insert, empty, Empty, with, singleton) where

import Prelude hiding (all)
import Control.Monad.Join
import Domain.Lattice
import Data.TypeLevel.HList
import Data.Kind
import Data.Maybe

newtype LabeledProduct (l :: [(Type, Type)]) = LabeledProduct { values :: L (MapList Maybe (MapSnd l)) } 

deriving instance (Eq (L (MapList Maybe (MapSnd l)))) => Eq (LabeledProduct l)
deriving instance (Ord (L (MapList Maybe (MapSnd l)))) => Ord (LabeledProduct l)

-- | A linked list of labeled values
-- deriving instance (Show l) => Show (LabeledProduct l)
type Products = LabeledProduct


-- | Get a particular type from the product
class GetType l p a where
   get' :: p -> Maybe a

-- | Get a particular item from the labeled product
instance {-# OVERLAPPING #-} GetType l (LabeledProduct ('(l, a) ': r)) a where
   get' (LabeledProduct (v ::: _)) = v
instance (GetType l (LabeledProduct r) a) => GetType l (LabeledProduct ('(l1, b) ': r)) a where
   get' (LabeledProduct (_ ::: ws)) = get' @l @(LabeledProduct r) (LabeledProduct ws)

get :: forall l p a . (ValueOf l p ~ a, GetType l p a) => p -> Maybe a
get = get' @l

-- | Insert a particular tag into the product
class Insert l p a where
   insert :: a -> p -> p
instance {-# OVERLAPPING #-} Insert l (LabeledProduct ('(l, a) ': r)) a where
   insert v (LabeledProduct (_ ::: r)) = LabeledProduct (Just v ::: r)
instance (Insert l (LabeledProduct r) a) => Insert l (LabeledProduct ('(l1, b) ': r)) a where
   insert v (LabeledProduct (w ::: ws)) = LabeledProduct (w ::: values (insert @l @(LabeledProduct r) v (LabeledProduct ws)))

-- | Create an empty product
class Empty p where
   empty :: p
instance Empty (LabeledProduct '[]) where
   empty = LabeledProduct ()
instance (Empty (LabeledProduct r)) => Empty (LabeledProduct ('(l, a) ': r)) where
   empty = LabeledProduct (Nothing ::: values (empty @(LabeledProduct r)))

-- | Get a list of labels from the product
class GetList (ls :: Type) as p where
   listOf :: p -> as
instance GetList () () (LabeledProduct l) where
   listOf = const ()
instance {-# OVERLAPPING #-} (GetList ls as (LabeledProduct r))
      => GetList (l ::: ls) (Maybe a ::: as) (LabeledProduct ('(l, a) ': r)) where
   listOf (LabeledProduct (v ::: vs)) = v ::: listOf @ls @as @(LabeledProduct r) (LabeledProduct vs)
instance (GetList (l' ::: ls) as (LabeledProduct r))
      =>  GetList (l' ::: ls) as (LabeledProduct ('(l,a) ': r)) where
   listOf (LabeledProduct (_ ::: vs)) = listOf @(l' ::: ls) @as @(LabeledProduct r) (LabeledProduct vs)

-- | Returns true if the product contains a value different from the given type
--
-- Example:
--
-- hasDifferent @Int (insert @Int 4 $ insert @Str "a") ==> True
-- hasDifferent @Int (insert @Int 4) ==> False
class HasDiff l p where
   hasDifferent :: p -> Bool
instance HasDiff l (LabeledProduct '[]) where 
   hasDifferent = const True
instance {-# OVERLAPPING #-} (HasDiff l (LabeledProduct r)) => (HasDiff l (LabeledProduct ('(l, a) ': r))) where
   hasDifferent (LabeledProduct (_ ::: vs)) = hasDifferent @l @(LabeledProduct r) (LabeledProduct vs)
instance (HasDiff l (LabeledProduct r)) => HasDiff l (LabeledProduct ('(l', a) ': r)) where
   hasDifferent (LabeledProduct (v ::: vs)) = isJust v || hasDifferent @l @(LabeledProduct r) (LabeledProduct vs)

-- | Same as ContainsValueDiff but accepts as list of labels
class HasDiffList ls p where
   hasDifferent' :: p -> Bool
instance HasDiffList () p where
   hasDifferent' = const False
instance (HasDiff l p, HasDiffList ls p) => HasDiffList (l ::: ls) p where
   hasDifferent' p = hasDifferent @l p || hasDifferent' @ls @p p

-- | Calls the `success` function if the product contains the given label(s)
-- or the `failure` function if the product contains values that are not equal
-- to the given label(s).
with :: forall ls as m b p .
         (All Maybe as, GetList ls as p, JoinLattice b, HasDiffList ls p, MonadJoin m, 
          MapHList Maybe (ValuesOf ls p) ~ as)
         => (as -> m b) -> m b -> p -> m b
with success failure p =
      mjoin (if hasDifferent' @ls p then failure else mzero)
            (if all isNothing items then mzero   else success items)
   where items = listOf @ls p


-- | Lattices for labeled products

instance Joinable (LabeledProduct '[]) where
   join _ = const (LabeledProduct ())
instance JoinLattice (LabeledProduct '[]) where
   bottom = LabeledProduct ()
   subsumes _ = const True

instance (Joinable a, Joinable (LabeledProduct r)) => Joinable (LabeledProduct ('(l, a) ': r)) where
   join (LabeledProduct (a ::: r1)) (LabeledProduct (b ::: r2)) =
      LabeledProduct $ join a b ::: values (join @(LabeledProduct r) (LabeledProduct r1) (LabeledProduct r2))

instance (JoinLattice a, JoinLattice (LabeledProduct r), Empty (LabeledProduct r)) => JoinLattice (LabeledProduct ('(l, a) ': r))  where
   subsumes (LabeledProduct (a ::: r1)) (LabeledProduct (b ::: r2)) =
      subsumes a b && subsumes @(LabeledProduct r) (LabeledProduct r1) (LabeledProduct r2)
   bottom = empty

-- | Computes the value associated with the given label
type family ValueOf l p where
   ValueOf l (LabeledProduct ('(l, a) ': _)) = a
   ValueOf l (LabeledProduct ('(l1, a) ': r)) = ValueOf l (LabeledProduct r)

-- | Computes a list of values associated with the given list of labels
type family ValuesOf ls p where
   ValuesOf (l ::: ()) p      = (ValueOf l p ::: ())
   ValuesOf (l ::: ls) p = (ValueOf l p :::  ValuesOf ls p)

singleton :: forall l p a . (Empty p, Insert l p a, ValueOf l p ~ a) => a -> p
singleton v = insert @l v empty
