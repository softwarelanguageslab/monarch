{-# LANGUAGE FlexibleContexts, UndecidableInstances, PatternSynonyms, FlexibleInstances, ConstraintKinds #-}
module Domain.Scheme.Class (SchemeDomainPre, SchemeDomain(..), SchemeConstraints, SchemeDomainPre) where

import Data.Set (Set)
import Domain
import Prelude hiding (null)
import Data.Kind
import Data.Hashable
import Data.Typeable

-- | Reusable pre-conditions for a valid Scheme domain
type SchemeDomainPre v = 
  ( RealDomain v,
    IntDomain v,
    CharDomain v,
    BoolDomain v,
    Ord v,
    Address (PAdr v),
    Address (VAdr v),
    Address (SAdr v),
    Address (Adr v),
    -- make sure that the strings adhere to the string domain
    StringDomain (Vlu (SAdr v)),
    -- make sure the vectors adhere to the vector domain
    VectorDomain (Vlu (VAdr v)),
    -- make sute that the pairs adhere to the pair domain 
    PairDomain (Vlu (PAdr v)),
    -- make sure that the contents of the vectors and pairs point to Scheme values
    Content  (Vlu (PAdr v)) ~ v,
    VContent (Vlu (VAdr v)) ~ v,
    -- make sure that `v` is used as an integer in the vector
    VIndex (Vlu (VAdr v)) ~ v,
    -- make sure that `v` is used as the index and character in their corresponding lattices
    IntS (Vlu (SAdr v)) ~ v,
    ChaS (Vlu (SAdr v)) ~ v,
    -- booleans in the number domain should link back to the values in the scheme domain
    Boo v ~ v,
    -- variables should point to values
    Vlu (Adr v) ~ v)    


-- | A value `v` in the Scheme domain satisfies all operations specified in its subdomains as wel as some operations to manipulate pointers
class (SchemeDomainPre v) =>
  SchemeDomain v
  where 
  -- types of addresses to variables
  type Adr v :: Type
  -- Types of pointers to pairs, vectors and strings
  type PAdr v :: Type
  type VAdr v :: Type
  type SAdr v :: Type

  -- Type of environment stored in closures
  type Env v :: Type

  -- Type of AST nodes representing a Scheme expression
  type Exp v :: Type

  -- Pointer injection
  pptr :: PAdr v -> v -- ^ a pointer to pairs
  vptr :: VAdr v -> v -- ^ a pointer to vectors 
  sptr :: SAdr v -> v -- ^ a pointer to strings

  -- Pointer extraction 
  pptrs :: (PAdr v ~ adr, Address adr, AbstractM m) => v -> m (Set adr)
  vptrs :: (VAdr v ~ adr, Address adr, AbstractM m) => v -> m (Set adr)
  sptrs :: (SAdr v ~ adr, Address adr, AbstractM m) => v -> m (Set adr)

  -- Closures
  injectClo :: (Exp v, Env v) -> v
  clos :: v -> Set (Exp v, Env v)

  -- | Insert a `nil` / `null` value into the abstract domain
  nil :: v

  -- | Insert an `unspecified` value into the abstract domain
  unsp :: v

  -- | Insert a primitive value in the abstract domain
  prim  :: String -> v
  prims :: v -> Set String

  withProc :: (AbstractM m, JoinLattice a) => (Either String (Exp v, Env v) -> m a) -> v -> m a

  -- | Differentiate between values
  -- Note that these predicates ought to be overapproximating, so they should return `True` if it could be a value of the given type
  isInteger :: v -> Bool
  isReal :: v -> Bool
  isChar :: v -> Bool
  isVecPtr :: v -> Bool
  isStrPtr :: v -> Bool
  isPaiPtr :: v -> Bool
  isClo :: v -> Bool
  isBool :: v -> Bool
  isNil  :: v -> Bool
  isUnsp :: v -> Bool
  isPrim :: v -> Bool

-----------------------------------------------------------------------------
-- Constraints for when the type of variables and environments is known 
-----------------------------------------------------------------------------

type SchemeConstraints v exp var env = 
   (Adr v ~ var,
    Env v ~ env, 
    Exp v ~ exp, 
    Typeable v,
    Typeable (PAdr v),
    Typeable (SAdr v),
    Typeable (VAdr v),
    Typeable (Adr v),
    Hashable (PAdr v),
    Hashable (SAdr v),
    Hashable (VAdr v),
    Hashable (Adr v)) :: Constraint


