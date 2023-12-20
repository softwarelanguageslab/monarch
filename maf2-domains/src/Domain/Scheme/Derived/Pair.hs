{-# LANGUAGE UndecidableInstances, FlexibleContexts #-}
-- | This module defines a derived abstract value 
-- in the Scheme domain based on a tuple of values
-- that implement the given Scheme domain.
--
-- NOTE: this domain is implemented under some assumptions.
-- One assumption of note is about error reporting in the 
-- subdomains. Some operations in the `SchemeDomain` are 
-- executed in a monadic context, this is to be able to 
-- transparantely report errors and to be able to support
-- non-deterministic behavior. The downside of this approach 
-- is that it becomes unclear what is supposed to happen
-- when two domains are combined. For instance, their 
-- errors could be combined in a way that if the left
-- fails the right subdomain can still succeed.
-- Another option is to fail the entire operation if 
-- the left or right fails. In this implementation we chose
-- for the latter option. Therefore the assumption is that 
-- the two subdomains behave in a semantically equivalent
-- way in terms of errors. That is, if one subdomain fails
-- then the other should also fail, or return `⊥`. 
-- Unfortunately, we cannot encode this property in the 
-- type system and is left as an implicit assumption
-- for the users of this domain.
module Domain.Scheme.Derived.Pair(SchemePairedValue) where

import Prelude hiding (div, ceiling, floor, round, log, sin, asin, cos, acos, tan, atan, sqrt, not)

import Lattice 
import Domain.Core
import Domain.Class 
import Domain.Scheme.Class
import Control.Monad.Join

------------------------------------------------------------
-- Declaration
------------------------------------------------------------

newtype SchemePairedValue l r = SchemePairedValue (l, r) deriving (Eq, Ord)

-- | Curried constructor of SchemePairedValue
pairedValue :: l -> r -> SchemePairedValue l r
pairedValue = curry SchemePairedValue

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
-- NumberDomain instance
------------------------------------------------------------

instance (NumberDomain l, NumberDomain r) => NumberDomain (SchemePairedValue l r) where
   type Boo (SchemePairedValue l r) = SchemePairedValue (Boo l) (Boo r)
   isZero (SchemePairedValue (l, r)) =
      pairedValue <$> isZero l <*> isZero r
   random (SchemePairedValue (l, r)) =
      pairedValue <$> random l <*> random r
   plus  (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> plus l1 l2 <*> plus r1 r2
   minus  (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> minus l1 l2 <*> minus r1 r2
   times  (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> times l1 l2 <*> times r1 r2
   div  (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> div l1 l2 <*> div r1 r2
   expt  (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> expt l1 l2 <*> expt r1 r2
   lt  (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> lt l1 l2 <*> lt r1 r2
   equals  (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> equals l1 l2 <*> equals r1 r2

------------------------------------------------------------
-- IntegerDomain instance
------------------------------------------------------------

instance (Domain l Integer, Domain r Integer) => Domain (SchemePairedValue l r) Integer where
   inject i = pairedValue (inject i) (inject i)

instance (IntDomain l, IntDomain r, Str l ~ Str r, Joinable (Str r)) => IntDomain (SchemePairedValue l r) where
   type Str (SchemePairedValue l r) = Str l
   type Rea (SchemePairedValue l r) = SchemePairedValue (Rea l) (Rea r)
   toReal (SchemePairedValue (l, r)) =
      pairedValue <$> toReal l <*> toReal r
   toString (SchemePairedValue (l, r)) =
      join <$> toString l <*> toString r
   quotient (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> quotient l1 l2 <*> quotient r1 r2
   modulo (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> modulo l1 l2 <*> modulo r1 r2
   remainder (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> remainder l1 l2 <*> remainder r1 r2

------------------------------------------------------------
-- RealDomain instance
------------------------------------------------------------

instance (Domain l Double, Domain r Double) => Domain (SchemePairedValue l r) Double where
   inject n = pairedValue (inject n) (inject n)

instance (RealDomain l, RealDomain r) => RealDomain (SchemePairedValue l r) where
   type IntR (SchemePairedValue l r) = SchemePairedValue (IntR l) (IntR r)
   toInt (SchemePairedValue (l,r)) = pairedValue <$> toInt l <*> toInt r
   ceiling (SchemePairedValue (l,r)) = pairedValue <$> ceiling l <*> ceiling r
   floor (SchemePairedValue (l,r)) = pairedValue <$> floor l <*> floor r
   round (SchemePairedValue (l,r)) = pairedValue <$> round l <*> round r
   log (SchemePairedValue (l,r))  = pairedValue <$> log l <*> log r
   sin (SchemePairedValue (l,r))  = pairedValue <$> sin l <*> sin r
   asin (SchemePairedValue (l,r)) = pairedValue <$> asin l <*> asin r
   cos (SchemePairedValue (l,r))  = pairedValue <$> cos l <*> cos r
   acos (SchemePairedValue (l,r)) = pairedValue <$> acos l <*> acos r
   tan (SchemePairedValue (l,r))  = pairedValue <$> tan l <*> tan r
   atan (SchemePairedValue (l,r)) = pairedValue <$> floor l <*> floor r
   sqrt (SchemePairedValue (l,r)) = pairedValue <$> sqrt l <*> sqrt r

------------------------------------------------------------
-- BoolDomain instance
------------------------------------------------------------

instance (Domain l Bool, Domain r Bool) => Domain (SchemePairedValue l r) Bool where
   inject b = pairedValue (inject b) (inject b)

instance (BoolDomain l, BoolDomain r) => BoolDomain (SchemePairedValue l r) where
   isTrue (SchemePairedValue (l, r))  = isTrue l || isTrue r
   isFalse (SchemePairedValue (l, r)) = isFalse l || isFalse r
   not (SchemePairedValue (l, r))     = pairedValue (not l) (not r)
   boolTop                            = pairedValue boolTop boolTop

------------------------------------------------------------
-- CharDomain instance
------------------------------------------------------------

instance (Domain l Char, Domain r Char) => Domain (SchemePairedValue l r) Char where
   inject c = pairedValue (inject c) (inject c)


instance (CharDomain l, CharDomain r) => CharDomain (SchemePairedValue l r) where
   type IntC (SchemePairedValue l r)    = SchemePairedValue (IntC l) (IntC r)
   downcase (SchemePairedValue (l, r))  = pairedValue <$> downcase l <*> downcase r
   upcase (SchemePairedValue (l, r))    = pairedValue <$> upcase l <*> upcase r
   charToInt (SchemePairedValue (l, r)) = pairedValue <$> charToInt l <*> charToInt r
   isLower (SchemePairedValue (l, r))   = join <$> isLower l <*> isLower r
   isUpper (SchemePairedValue (l, r))   = join <$> isUpper l <*> isUpper r
   charEq (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) = 
      join <$> charEq l1 l2 <*> charEq  r1 r2
   charLt (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) = 
      join <$> charLt l1 l2 <*> charLt  r1 r2
   charEqCI (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) = 
      join <$> charEqCI l1 l2 <*> charEqCI  r1 r2
   charLtCI (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) = 
      join <$> charLtCI l1 l2 <*> charLtCI  r1 r2

------------------------------------------------------------
-- SchemeDomain instance
------------------------------------------------------------

instance (-- both subdomains should talk about the same environment
          -- expressions.
          Env l ~ Env r, 
          Exp l ~ Exp r,
          -- both subdomains should be scheme domains
          SchemeDomain l, 
          SchemeDomain r,
          Joinable (Str r),
          Str l ~ Str r,
          -- both subdomains should use the same pointers,
          -- consequently if `SchemeValue` is used 
          -- they will both point to the combined
          -- value and not their seperate values,
          -- making integration easier.
          Adr l  ~ Adr r,
          VAdr l ~ VAdr r, 
          SAdr l ~ SAdr r,
          PAdr l ~ PAdr r,
          -- set-specific constraints
          Ord (Exp l),
          Ord (Env l)
   ) => SchemeDomain (SchemePairedValue l r) where

   type Adr (SchemePairedValue l r)  = Adr l
   type PAdr (SchemePairedValue l r) = PAdr l
   type VAdr (SchemePairedValue l r) = VAdr l
   type SAdr (SchemePairedValue l r) = SAdr l

   type Env (SchemePairedValue l r) = Env l
   type Exp (SchemePairedValue l r) = Exp l
   
   pptr p = pairedValue (pptr p) (pptr p)
   vptr p = pairedValue (vptr p) (vptr p)
   sptr p = pairedValue (sptr p) (sptr p)

   pptrs (SchemePairedValue (l,r)) = 
      join <$> pptrs l <*> pptrs r
   vptrs (SchemePairedValue (l,r)) = 
      join <$> vptrs l <*> vptrs r
   sptrs (SchemePairedValue (l,r)) = 
      join <$> sptrs l <*> sptrs r

   injectClo clo = 
      SchemePairedValue (injectClo clo, injectClo clo)
   clos (SchemePairedValue (l,r)) =
      join (clos l) (clos r)
   
   nil  = pairedValue nil nil
   unsp = pairedValue unsp unsp
   prim s = pairedValue (prim s) (prim s)
   prims (SchemePairedValue (l, r)) = 
      join (prims l) (prims r)

   withProc f (SchemePairedValue (l, r)) = 
      mjoin (withProc f l) (withProc f r)

   isInteger (SchemePairedValue (l, r)) = isInteger l || isInteger r
   isReal (SchemePairedValue (l, r))    = isReal l || isReal r
   isChar (SchemePairedValue (l, r))    = isChar l || isChar r
   isVecPtr (SchemePairedValue (l, r))  = isVecPtr l || isVecPtr r
   isStrPtr (SchemePairedValue (l, r))  = isStrPtr l || isStrPtr r
   isPaiPtr (SchemePairedValue (l, r))  = isPaiPtr l || isPaiPtr r
   isClo (SchemePairedValue (l, r))     = isClo l  || isClo r
   isBool (SchemePairedValue (l, r))    = isBool l || isBool r
   isNil (SchemePairedValue (l, r))     = isNil l  || isNil r
   isUnsp (SchemePairedValue (l, r))    = isUnsp l || isUnsp r
   isPrim (SchemePairedValue (l, r))    = isPrim l || isPrim r
