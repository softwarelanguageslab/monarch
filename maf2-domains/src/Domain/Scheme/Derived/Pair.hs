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
module Domain.Scheme.Derived.Pair(SchemePairedValue(..), leftValue, rightValue, mkLeft, mkRight) where

import Prelude hiding (and, or, div, ceiling, floor, round, log, sin, asin, cos, acos, tan, atan, sqrt, not)

import Lattice
import Domain.Core
import Domain.Class
import Domain.Scheme.Class
import Control.Monad.Join
import qualified Data.Set as Set
import Text.Printf (printf)
import Control.DeepSeq
import Lattice.Trace (Trace (..))
import Domain.Address (AddressWithCtx (..))
import Domain.Scheme.Modular (SchemeString (..))
import Domain.Scheme.Derived.Top (SchemeTopLifted)

------------------------------------------------------------
-- Declaration
------------------------------------------------------------

newtype SchemePairedValue l r = SchemePairedValue (l, r) deriving (Eq, Ord, NFData)

instance (Show l, Show r) => Show (SchemePairedValue l r) where
   show (SchemePairedValue (l, r)) = printf "(%s, %s)" (show l) (show r)

leftValue :: SchemePairedValue l r -> l
leftValue (SchemePairedValue (l, _)) = l
rightValue :: SchemePairedValue l r -> r
rightValue (SchemePairedValue (_, r)) = r

mkLeft :: (Lattice r) => l -> SchemePairedValue l r
mkLeft = SchemePairedValue . (,bottom)
mkRight :: (Lattice l) => r -> SchemePairedValue l r
mkRight = SchemePairedValue . (bottom,)

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
instance (BottomLattice l, BottomLattice r) => BottomLattice (SchemePairedValue l r) where
   bottom = SchemePairedValue bottom

------------------------------------------------------------
-- Traceability
------------------------------------------------------------

instance (Trace adr l, Trace adr r) => Trace adr (SchemePairedValue l r) where
   trace (SchemePairedValue (l, r)) = Set.union (trace l) (trace r) 

------------------------------------------------------------
-- NumberDomain instance
------------------------------------------------------------

instance (NumberDomain l bl, NumberDomain r br) => NumberDomain (SchemePairedValue l r) (SchemePairedValue bl br) where
   isZero (SchemePairedValue (l, r)) =
      pairedValue <$> isZero l <*> isZero r
   random (SchemePairedValue (l, r)) =
      pairedValue <$> (random @_ @bl) l <*> (random @_ @br) r
   plus  (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> (plus @_ @bl) l1 l2 <*> (plus @_ @br) r1 r2
   minus  (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> (minus @_ @bl) l1 l2 <*> (minus @_ @br) r1 r2
   times  (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> (times @_ @bl) l1 l2 <*> (times @_ @br) r1 r2
   div  (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> (div @_ @bl) l1 l2 <*> (div @_ @br) r1 r2
   expt  (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> (expt @_ @bl) l1 l2 <*> (expt @_ @br) r1 r2
   lt  (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> lt l1 l2 <*> lt r1 r2
   eq  (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> eq l1 l2 <*> eq r1 r2

------------------------------------------------------------
-- IntegerDomain instance
------------------------------------------------------------
type instance StrDom (SchemePairedValue l r) = (StrDom l)

instance (Domain l Integer, Domain r Integer) => Domain (SchemePairedValue l r) Integer where
   inject i = pairedValue (inject i) (inject i)

instance (IntDomain l bl s rl, IntDomain r br s rr, Joinable s, StrDom l ~ s, StrDom r ~ s) => 
   IntDomain (SchemePairedValue l r) {- bln -} (SchemePairedValue bl br) {- str -} s {- rea -} (SchemePairedValue rl rr) where
   toReal (SchemePairedValue (l, r)) =
      pairedValue <$> (toReal @_ @bl @s) l <*> (toReal @_ @br @s) r
   toString (SchemePairedValue (l, r)) =
      liftA2 join ((toString @_ @bl @_ @rl) l) ((toString @_ @br @_ @rr) r)
   quotient (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> (quotient @_ @bl @s @rl) l1 l2 <*> (quotient @_ @br @s @rr) r1 r2
   modulo (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> (modulo @_ @bl @s @rl) l1 l2 <*> (modulo @_ @br @s @rr) r1 r2
   remainder (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue <$> (remainder @_ @bl @s @rl) l1 l2 <*> (remainder @_ @br @s @rr) r1 r2

------------------------------------------------------------
-- String Domain
------------------------------------------------------------

-- Left biased instance for the StringDoman
instance {-# OVERLAPPABLE #-} (StringDomain s l l l, BottomLattice r, Joinable r, Eq r) => StringDomain (SchemeString s)
                                        {- bln -} (SchemePairedValue l r)
                                        {- int -} (SchemePairedValue l r)
                                        {- chr -} (SchemePairedValue l r)  where
   length          = fmap mkLeft . Domain.Core.length @_ @l @l @l . sconst
   append s1 s2    = SchemeString <$> append @_ @l @l @l (sconst s1) (sconst s2)
   ref s i         = mkLeft <$> ref @_ @l @l @l (sconst s) (leftValue i)
   stringLt s1 s2  = mkLeft <$> stringLt @_ @l @l @l (sconst s1) (sconst s2)
   toNumber        = fmap mkLeft . toNumber @_ @l @l @l . sconst
   set s i c       = SchemeString <$> set @_ @l @l @l (sconst s) (leftValue i) (leftValue c)
   makeString i    = fmap SchemeString .  makeString @_ @l @l @l (leftValue i) . leftValue
   topString       = SchemeString $ topString @_ @l @l @l


------------------------------------------------------------
-- RealDomain instance
------------------------------------------------------------

instance (Domain l Double, Domain r Double) => Domain (SchemePairedValue l r) Double where
   inject n = pairedValue (inject n) (inject n)

instance (RealDomain l bl il, RealDomain r br ir) => 
   RealDomain (SchemePairedValue l r) (SchemePairedValue bl br) (SchemePairedValue il ir) where
   toInt (SchemePairedValue (l,r)) = pairedValue <$> (toInt @_ @bl) l <*> (toInt @_ @br) r
   ceiling (SchemePairedValue (l,r)) = pairedValue <$> (ceiling @_ @bl @il) l <*> (ceiling @_ @br @ir) r
   floor (SchemePairedValue (l,r)) = pairedValue <$> (floor @_ @bl @il) l <*> (floor @_ @br @ir) r
   round (SchemePairedValue (l,r)) = pairedValue <$> (round @_ @bl @il) l <*> (round @_ @br @ir) r
   log (SchemePairedValue (l,r))  = pairedValue <$> (log @_ @bl @il) l <*> (log @_ @br @ir) r
   sin (SchemePairedValue (l,r))  = pairedValue <$> (sin @_ @bl @il) l <*> (sin @_ @br @ir) r
   asin (SchemePairedValue (l,r)) = pairedValue <$> (asin @_ @bl @il) l <*> (asin @_ @br @ir) r
   cos (SchemePairedValue (l,r))  = pairedValue <$> (cos @_ @bl @il) l <*> (cos @_ @br @ir) r
   acos (SchemePairedValue (l,r)) = pairedValue <$> (acos @_ @bl @il) l <*> (acos @_ @br @ir) r
   tan (SchemePairedValue (l,r))  = pairedValue <$> (tan @_ @bl @il) l <*> (tan @_ @br @ir) r
   atan (SchemePairedValue (l,r)) = pairedValue <$> (floor @_ @bl @il) l <*> (floor @_ @br @ir) r
   sqrt (SchemePairedValue (l,r)) = pairedValue <$> (sqrt @_ @bl @il) l <*> (sqrt @_ @br @ir) r

------------------------------------------------------------
-- BoolDomain instance
------------------------------------------------------------

instance (Domain l Bool, Domain r Bool) => Domain (SchemePairedValue l r) Bool where
   inject b = pairedValue (inject b) (inject b)

instance (BoolDomain l, BoolDomain r) => BoolDomain (SchemePairedValue l r) where
   isTrue (SchemePairedValue (l, r))  = isTrue l || isTrue r
   isFalse (SchemePairedValue (l, r)) = isFalse l || isFalse r
   not (SchemePairedValue (l, r))     = pairedValue (not l) (not r)
   or (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue (or l1 l2) (or r1 r2)
   and (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      pairedValue (and l1 l2) (and r1 r2)
   boolTop                            = pairedValue boolTop boolTop

------------------------------------------------------------
-- CharDomain instance
------------------------------------------------------------

instance (Domain l Char, Domain r Char) => Domain (SchemePairedValue l r) Char where
   inject c = pairedValue (inject c) (inject c)


instance (CharDomain l il, CharDomain r ir) => CharDomain (SchemePairedValue l r) (SchemePairedValue il ir) where
   downcase (SchemePairedValue (l, r))  = pairedValue <$> (downcase @_ @il) l <*> (downcase @_ @ir) r
   upcase (SchemePairedValue (l, r))    = pairedValue <$> (upcase @_ @il) l <*> (upcase @_ @ir) r
   charToInt (SchemePairedValue (l, r)) = pairedValue <$> charToInt l <*> charToInt r
   isLower (SchemePairedValue (l, r))   = join <$> (isLower @_ @il) l <*> (isLower @_ @ir) r
   isUpper (SchemePairedValue (l, r))   = join <$> (isUpper @_ @il) l <*> (isUpper @_ @ir) r
   charEq (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      join <$> (charEq @_ @il) l1 l2 <*> (charEq @_ @ir) r1 r2
   charLt (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      join <$> (charLt @_ @il) l1 l2 <*> (charLt @_ @ir) r1 r2
   charEqCI (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      join <$> (charEqCI @_ @il) l1 l2 <*> (charEqCI @_ @ir) r1 r2
   charLtCI (SchemePairedValue (l1, r1)) (SchemePairedValue (l2, r2)) =
      join <$> (charLtCI @_ @il) l1 l2 <*> (charLtCI @_ @ir) r1 r2


------------------------------------------------------------
-- TopLattice instance
------------------------------------------------------------

instance (TopLattice a, TopLattice b) => TopLattice (SchemePairedValue a b) where
   top = SchemePairedValue (top, top)

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
          Joinable (StrDom r),
          -- both subdomains should use the same pointers,
          -- consequently if `SchemeValue` is used 
          -- they will both point to the combined
          -- value and not their seperate values,
          -- making integration easier.
          Adr l  ~ Adr r,
          StrDom l ~ StrDom r,
          StrDom l ~ StrDom (SchemePairedValue l r),
          -- set-specific constraints
          Ord (Exp l),
          Ord (Env l)
   ) => SchemeDomain (SchemePairedValue l r) where

   type Adr (SchemePairedValue l r)  = Adr l

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

   isInteger (SchemePairedValue (l, r)) = curry SchemePairedValue (isInteger l) (isInteger r)
   isReal (SchemePairedValue (l, r))    = curry SchemePairedValue (isReal l) (isReal r)
   isChar (SchemePairedValue (l, r))    = curry SchemePairedValue (isChar l) (isChar r)
   isVecPtr (SchemePairedValue (l, r))  = curry SchemePairedValue (isVecPtr l) (isVecPtr r)
   isStrPtr (SchemePairedValue (l, r))  = curry SchemePairedValue (isStrPtr l) (isStrPtr r)
   isSymbol (SchemePairedValue (l, r))  = curry SchemePairedValue (isSymbol l) (isSymbol r)
   isPaiPtr (SchemePairedValue (l, r))  = curry SchemePairedValue (isPaiPtr l) (isPaiPtr r)
   isClo (SchemePairedValue (l, r))     = curry SchemePairedValue (isClo l) (isClo r)
   isBool (SchemePairedValue (l, r))    = curry SchemePairedValue (isBool l) (isBool r)
   isNil (SchemePairedValue (l, r))     = curry SchemePairedValue (isNil l)  (isNil r)
   isUnsp (SchemePairedValue (l, r))    = curry SchemePairedValue (isUnsp l) (isUnsp r)
   isPrim (SchemePairedValue (l, r))    = curry SchemePairedValue (isPrim l) (isPrim r)

   symbol s  = SchemePairedValue (symbol s, symbol s)
   symbols v = Set.union (symbols $ leftValue v) (symbols $ rightValue v)

------------------------------------------------------------
-- AddressWithCtx instance
------------------------------------------------------------

instance (AddressWithCtx ctx l, AddressWithCtx ctx r) => AddressWithCtx ctx (SchemePairedValue l r) where
   replaceCtx ctx' (SchemePairedValue (l,r)) = SchemePairedValue (replaceCtx ctx' l, replaceCtx ctx' r)
