{-# LANGUAGE DataKinds, TypeFamilies, PolyKinds, TypeOperators, MultiParamTypeClasses, FlexibleInstances, UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}
module TypeLevel.List(Append, MapList, Has, NotElement, NoDuplicates, ForAll) where 

import Data.Kind
import GHC.TypeError

type family Append xs ys where
   Append '[] ys = ys
   Append (x ': xs) ys = (x ': Append xs ys)

-- | Map the given functor over the list
type family MapList (f :: * -> *) (xs :: [*]) where 
   MapList f '[] = '[]
   MapList f (x ': xs) = f x ': MapList f xs

-- | Enforces constraints on all elements of the list
type family ForAll (f :: * -> Constraint) (xs :: [*]) :: Constraint where
   ForAll f '[] = () :: Constraint
   ForAll f (x ': xs) = (f x, ForAll f xs)
   

-- | This typeclass has instances if the given element belongs
-- to the list.
--
-- Example:
--
-- test1 :: Has 1 '[1] => () -- typechecks
-- test2 :: Has 2 '[2] => () -- does not typecheck
type family Has (x :: k) (xs :: [k]) :: Constraint where
   Has x (x ': _) = () :: Constraint
   Has x '[] = TypeError (Text "Element " :<>: ShowType x :<>: Text " not in list")
   Has x (_ ': ys) = Has x ys


-- | Type-level function that resolves to an empty constraint
-- if the list does not contain the given element, otherwise resolves 
-- in a type error
type family NotElement (x :: k) (xs :: [k]) :: Constraint where
   NotElement _ '[] = () :: Constraint 
   NotElement x (x ': xs) = TypeError (Text "Duplicate element " :<>: ShowType x)
   NotElement y (x ': xs) = NotElement y xs

type family NoDuplicates (xs :: [k]) :: Constraint where
   NoDuplicates '[] = ()
   NoDuplicates xs  = NoDuplicatesAux xs '[]

type family NoDuplicatesAux (xs :: [k]) (ys :: [k]) :: Constraint where 
   NoDuplicatesAux '[] _ = () :: Constraint
   NoDuplicatesAux (x ': xs) ys = (NotElement x ys, NoDuplicatesAux xs (x ': ys))

----------------------------------------
-- Tests
----------------------------------------

test1 :: Has 1 '[1] => () -- typechecks
test1 = ()
_test1' :: ()
_test1' = test1

test2 :: Has 2 '[1] => () -- fails
test2 = ()
-- _test2' :: ()
-- _test2' = test2

test3 :: NoDuplicates '[1, 2, 3] => ()
test3 = ()
_test3' :: ()
_test3' = test3

test4 :: NoDuplicates '[1, 2, 1, 3] => () -- fails 
test4 = ()
-- _test4' :: ()
-- _test4' = test4

