{-# OPTIONS_GHC -Wno-redundant-constraints #-}
{-# OPTIONS_GHC -Wno-partial-fields #-}
{-# LANGUAGE FlexibleContexts #-}
{-# OPTIONS_GHC -Wno-incomplete-record-updates #-}
module Domain.Python.ClassDomain(
   ObjectDomain(..),
   AbstractObject(..)
) where

import Prelude hiding (lookup)
import Data.Kind
import Domain.Dictionary hiding (dict, Bottom)
import Domain.Lattice
import Domain

-- | A domain for representing objects
class (JoinLattice v, Domain (OKey v) String, Vlu (OPtr v) ~ v) => ObjectDomain v where
   type OKey v :: Type
   type OVlu v :: Type
   type OPtr v :: Type

   -- | Create a new object with the given attributes, class 
   -- and linearisation order
   object :: [(OKey v, OVlu v)] -> OPtr v -> [OPtr v] -> v
   -- | Look up a key in the local object dictionary
   lookupLocal :: OKey v -> v -> OVlu v
   -- | Get a pointer to the class associated with the object 
   getClass :: v -> OPtr v
   -- | Adds the given key and value to the object
   set :: OKey v -> OVlu v -> v -> v
   -- | Changes the class of the object
   setCls :: OPtr v -> v -> v
   -- | The superclass linearisation order of a class
   mro :: v -> [OPtr v]


-- | An abstract representation of an object based on a pointer type and a dictionary
data AbstractObject ptr k v = AbstractObject { cls :: ptr, dict :: Dictionary k v } | Bottom deriving Eq

instance (Joinable ptr, IsDict k v) => Joinable (AbstractObject ptr k v) where
   join o1 o2 = AbstractObject {
      cls = join (cls o1) (cls o2), dict = join (dict o1) (dict o2)
   }

instance (JoinLattice ptr, JoinLattice k, JoinLattice v, IsDict k v) => JoinLattice (AbstractObject ptr k v) where
   bottom = Bottom
   subsumes o1 o2 =
      subsumes (cls o1) (cls o2) && subsumes (dict o1) (dict o2)

instance (Eq ptr, JoinLattice ptr, JoinLattice k, JoinLattice v, IsDict k v, Domain k String, Vlu ptr ~ AbstractObject ptr k v) => ObjectDomain (AbstractObject ptr k v) where
   type OKey (AbstractObject _ k _) = k
   type OVlu (AbstractObject _ _ v) = v
   type OPtr (AbstractObject ptr _ _) = ptr

   lookupLocal k d
      | k == bottom || d == bottom = bottom
   lookupLocal k d = lookup k $ dict  d
   getClass Bottom = bottom
   getClass (AbstractObject ptr _) = ptr
   set k v o
      | k == bottom || v == bottom || o == bottom = bottom
   set k v o = o { dict = update k v (dict o) }
   setCls c o = o { cls = c }

   object = undefined
   mro = undefined

