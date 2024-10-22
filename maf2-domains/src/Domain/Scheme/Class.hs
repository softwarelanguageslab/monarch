{-# LANGUAGE FlexibleContexts, UndecidableInstances, FlexibleInstances, ConstraintKinds #-}
module Domain.Scheme.Class (SchemeDomainPre, SchemeDomain(..), SchemeConstraints, SchemeValue, VarDom, VecDom, PaiDom, StrDom, Address) where

import Lattice 
import Domain.Core 
import Control.Monad.AbstractM

import Data.Set (Set)
import Prelude hiding (or, null)
import Data.Kind

-- | Reusable pre-conditions for a valid Scheme domain
type SchemeDomainPre v =
  ( RealDomain v,
    IntDomain v,
    CharDomain v,
    BoolDomain v,
    Boo v ~ v)

-- | An address is an abstraction for a memory location on which a heap-allocated address resides
class (Show a, Eq a, Ord a) => Address a
instance {-# OVERLAPPABLE #-} (Show a, Eq a, Ord a) => Address a

-- | A value `v` in the Scheme domain satisfies all operations specified in its subdomains as wel as some operations to manipulate pointers
class (RealDomain v,
       IntDomain v,
       CharDomain v,
       BoolDomain v,
       -- all address type families should satisfy the address typeclass
       Address (PAdr v),
       Address (VAdr v),
       Address (SAdr v),
       Address (Adr v),
       -- booleans in the number domain should link back to the values in the scheme domain
       Boo v ~ v) => SchemeDomain v
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
  pptrs :: AbstractM m => v -> m (Set (PAdr v))
  vptrs :: AbstractM m => v -> m (Set (VAdr v))
  sptrs :: AbstractM m => v -> m (Set (SAdr v))

  -- | Inject a symbol in the abstract domain
  symbol :: String -> v

  -- Closures
  injectClo :: (Exp v, Env v) -> v
  clos :: v -> Set (Exp v, Env v)

  -- | Get the symbols contained within the abstract value 
  symbols :: v -> Set String

  -- | Insert a `nil` / `null` value into the abstract domain
  nil :: v

  -- | Insert an `unspecified` value into the abstract domain
  unsp :: v

  -- | Insert a primitive value in the abstract domain
  prim  :: String -> v
  prims :: v -> Set String

  withProc :: (AbstractM m, Lattice a) => (Either String (Exp v, Env v) -> m a) -> v -> m a

  -- | Differentiate between values
  -- Note that these predicates ought to be overapproximating, so they should return `True` if it could be a value of the given type
  isInteger :: (BottomLattice b, BoolDomain b) => v -> b
  isReal    :: (BottomLattice b, BoolDomain b) => v -> b
  isChar    :: (BottomLattice b, BoolDomain b) => v -> b
  isVecPtr  :: (BottomLattice b, BoolDomain b) => v -> b
  isStrPtr  :: (BottomLattice b, BoolDomain b) => v -> b
  isPaiPtr  :: (BottomLattice b, BoolDomain b) => v -> b
  isClo     :: (BottomLattice b, BoolDomain b) => v -> b
  isBool    :: (BottomLattice b, BoolDomain b) => v -> b
  isNil     :: (BottomLattice b, BoolDomain b) => v -> b
  isUnsp    :: (BottomLattice b, BoolDomain b) => v -> b
  isPrim    :: (BottomLattice b, BoolDomain b) => v -> b
  isProc    :: (BottomLattice b, BoolDomain b) => v -> b
  isProc v = or (isPrim v) (isClo v)

-- | Types of values assigned to variables
type family VarDom v :: Type
-- | Compute the string domain for a particular type
type family StrDom v :: Type
-- | Compute the pair domain for a particular type
type family PaiDom v :: Type
-- | Compute the vector domain for a particular type
type family VecDom v :: Type

-- | Some `v` that can be used in semantics
-- as 'the' Scheme value. It relates pointer-referenced
-- domains to ensure that they refer back to this `v`
-- in their contents. For example, for a pair, the content
-- of the pair should be a `v` again. This important 
-- for implementing primitives and other semantics 
-- that rely on these things to be the case.
--
-- For implementing the Scheme domain itself, however,
-- these constraints do not really apply and can simply
-- be omitted from the set of constraints for a valid `SchemeDomain`. 
-- In essence, a `SchemeDomain` is simply a combination of pointer sets,
-- sets of closures and the numerical domain. All other domains are completely 
-- seperate from this domain but can be integrated in a valid way into analysis
-- using a `SchemeValue` constraint.
type SchemeValue v  = (
    -- the values should form a ShemeDomain
    SchemeDomain v,
    -- make sure that the strings adhere to the string domain
    StringDomain (StrDom v),
    -- make sure the vectors adhere to the vector domain
    VectorDomain (VecDom v),
    -- make sure that the pairs adhere to the pair domain 
    PairDomain (PaiDom v),
    -- make sure that the contents of the vectors and pairs point to Scheme values
    Content  (PaiDom v) ~ v,
    VContent (VecDom v) ~ v,
    -- make sure that `v` is used as an integer in the vector
    VIndex (VecDom v) ~ v,
    -- make sure that `v` is used as the index and character in their corresponding lattices
    IntS (StrDom v) ~ v,
    ChaS (StrDom v) ~ v,
    -- variables should point to values
    VarDom v ~ v)

-----------------------------------------------------------------------------
-- Constraints for when the type of variables and environments is known 
-----------------------------------------------------------------------------

type SchemeConstraints v exp var env =
   (Adr v ~ var,
    Env v ~ env,
    Exp v ~ exp) :: Constraint


