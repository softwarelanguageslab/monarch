{-# LANGUAGE UndecidableInstances, FlexibleContexts #-}
-- | This module defines a derived abstract value 
-- in the Scheme domain based on a tuple of values
-- that implement the given Scheme domain.
--
-- As addresses, a combination of addresses is proposed
-- that should resolve to the same underlying string domain.
module Domain.Scheme.Derived.Pair(SchemePairedValue) where

import Domain
import Domain.Scheme.Class
import Data.Dynamic

------------------------------------------------------------
-- Declaration
------------------------------------------------------------

newtype SchemePairedValue l r = SchemePairedValue (l, r)

------------------------------------------------------------
-- Lattice instances
------------------------------------------------------------

-- | The paired value forms a lattice is both consistuents
-- forms a lattice.
instance (Joinable l, Joinable r) => Joinable (SchemePairedValue l r) where
   join (SchemePairedValue l) (SchemePairedValue r) = SchemePairedValue $ join l r

-- | The paired value has bottom and subsumes if the consistuents have them
instance (JoinLattice l, JoinLattice r) => JoinLattice (SchemePairedValue l r) where
   bottom = SchemePairedValue bottom
   subsumes (SchemePairedValue l) (SchemePairedValue r) = subsumes l r

------------------------------------------------------------
-- Addresses
------------------------------------------------------------

-- | Representation of addresses to variables 
data AdrP l r = AdrP (Adr l) (Adr r)
-- | Representation of addresses to vectors 
data VAdrP l r = AdrV (VAdr l) (VAdr r)
-- | Represdentation of addresses to pairs
data PAdrP l r = VAdrP (PAdr l) (PAdr r)
-- | Representation of addresses to strings
data SAdrP l r = SAdrP (SAdr l) (SAdr r)

---

deriving instance (Show (Adr l), Show (Adr r)) => Show (AdrP l r)
deriving instance (Ord (Adr l), Ord (Adr r)) => Ord (AdrP l r)
deriving instance (Eq (Adr l), Eq (Adr r)) => Eq (AdrP l r)

instance (Typeable l, Typeable r, Address (Adr l), Address (Adr r)) => Address (AdrP l r) where
   type Vlu (AdrP l r) = SchemePairedValue l r

---

deriving instance (Show (VAdr l), Show (VAdr r)) => Show (VAdrP l r)
deriving instance (Ord (VAdr l), Ord (VAdr r)) => Ord (VAdrP l r)
deriving instance (Eq (VAdr l), Eq (VAdr r)) => Eq (VAdrP l r)

instance (Typeable l, Typeable r,
          Address (VAdr l), Address (VAdr r),
          Vlu (VAdr l) ~ Vlu (VAdr r)) => Address (VAdrP l r) where
   type Vlu (VAdrP l r) = Vlu (VAdr l)

---


--
