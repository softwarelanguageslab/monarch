-- | Instance of @TopLifted@ for Scheme domains
{-# LANGUAGE UndecidableInstances, DeriveTraversable, DeriveGeneric #-}
module Domain.Scheme.Derived.Top where

import Prelude hiding (div, ceiling, floor, round, log, sin, asin, cos, acos, tan, atan, sqrt, not, and, or)

import Control.DeepSeq
import Domain.Class
import Domain.Scheme.Class
import Domain.Core.BoolDomain.Class 
import Domain.Core.NumberDomain.TopLifted ()
import Domain.Core.CharDomain.TopLifted ()
import Domain.Core.BoolDomain (boolTop)
import Domain.Core.BoolDomain.TopLifted ()
import Domain.Core.NumberDomain.Class 
import Domain.Core.CharDomain.Class
import GHC.Generics
import Lattice.Class
import Lattice.Equal
import Lattice.TopLiftedLattice (TopLifted(..), fromTL)

import qualified Data.Set as Set

-- | Lifts a value @a@ from the Scheme domain into a @TopLifted@ value so that all Scheme values have a synthetic top element
newtype SchemeTopLifted a = SchemeTopLifted { getTopLifted :: (TopLifted a) }
                     deriving (Ord, Eq, Joinable, PartialOrder, Applicative, Foldable, Traversable, Functor, BottomLattice, EqualLattice, Generic)

instance Show a => Show (SchemeTopLifted a) where   
   show (SchemeTopLifted Top) = "⊤"
   show (SchemeTopLifted (Value v)) = show v

instance NFData a => NFData (SchemeTopLifted a)

type instance BoolFor (SchemeTopLifted a) = SchemeTopLifted (BoolFor a)

instance TopLattice (SchemeTopLifted a) where 
   top = SchemeTopLifted Top

instance (Domain a b) => Domain (SchemeTopLifted a) b where 
   inject = SchemeTopLifted . Value . inject

instance (BoolDomain a) => BoolDomain (SchemeTopLifted a) where
   isTrue (SchemeTopLifted v) = isTrue v
   isFalse (SchemeTopLifted v) = isFalse v
   not = fmap not
   and = liftA2 and 
   or  = liftA2 or

instance (CharDomain a) => CharDomain (SchemeTopLifted a) where   
   type IntC (SchemeTopLifted a) = SchemeTopLifted (IntC a) 

   --- XXX: this is very close top the instance of @TopLifted@ in @Domain.Core.CharDomain.TopLifted@ see if 
   -- some code can be shared
   downcase   = sequenceA . fmap downcase
   upcase     = sequenceA . fmap upcase
   charToInt  = sequenceA . fmap charToInt
   isLower    = fmap (fromTL boolTop . getTopLifted) . sequenceA .  fmap isLower
   isUpper    = fmap (fromTL boolTop . getTopLifted)  . sequenceA .  fmap isUpper
   charEq a   = fmap (fromTL boolTop . getTopLifted) . sequenceA . liftA2 charEq a
   charLt a   = fmap (fromTL boolTop . getTopLifted) . sequenceA . liftA2 charLt a
   charEqCI a = fmap (fromTL boolTop . getTopLifted) . sequenceA . liftA2 charEqCI a
   charLtCI a = fmap (fromTL  boolTop . getTopLifted) . sequenceA . liftA2 charLtCI a

instance (NumberDomain a) => NumberDomain (SchemeTopLifted a) where    
   isZero  = sequenceA . fmap isZero 
   random  = sequenceA . fmap random
   plus  a = sequenceA . liftA2 plus a 
   minus a = sequenceA . liftA2 minus a
   times a = sequenceA . liftA2 times a
   div   a = sequenceA . liftA2 div a
   expt  a = sequenceA . liftA2 expt a
   eq    a = sequenceA . liftA2 eq a
   lt    a = sequenceA . liftA2 lt a

instance (IntDomain a) => IntDomain (SchemeTopLifted a) where
   type Str (SchemeTopLifted a) = SchemeTopLifted (Str a)
   type Rea (SchemeTopLifted a) = SchemeTopLifted (Rea a)

   toReal    = sequenceA . fmap toReal 
   toString  = sequenceA . fmap toString 
   quotient  a = sequenceA . liftA2 quotient a
   modulo    a = sequenceA . liftA2 modulo a
   remainder a = sequenceA . liftA2 remainder a

instance (RealDomain a) => RealDomain (SchemeTopLifted a) where
   type IntR (SchemeTopLifted a) = SchemeTopLifted (IntR a)
   toInt   = sequenceA . fmap toInt
   ceiling = sequenceA . fmap ceiling
   floor   = sequenceA . fmap floor 
   round   = sequenceA . fmap round 
   log     = sequenceA . fmap log
   sin     = sequenceA . fmap sin
   asin    = sequenceA . fmap asin
   cos     = sequenceA . fmap cos
   acos    = sequenceA . fmap acos
   tan     = sequenceA . fmap tan
   atan    = sequenceA . fmap atan
   sqrt    = sequenceA . fmap sqrt

instance (SchemeDomain a, 
          TopLattice (VAdr a), 
          TopLattice (SAdr a),
          TopLattice (PAdr a)
         ) => SchemeDomain (SchemeTopLifted a) where 

   type Adr  (SchemeTopLifted a) = Adr a
   type VAdr (SchemeTopLifted a) = VAdr a
   type SAdr (SchemeTopLifted a) = SAdr a
   type PAdr (SchemeTopLifted a) = PAdr a
   type Env  (SchemeTopLifted a) = Env a 
   type Exp  (SchemeTopLifted a) = Exp a

   -- Pointer injection
   pptr = SchemeTopLifted  . Value . pptr
   sptr = SchemeTopLifted  . Value . sptr
   vptr = SchemeTopLifted  . Value . vptr
   
   -- Pointer extractions
   pptrs (SchemeTopLifted (Value v)) = pptrs v
   pptrs (SchemeTopLifted Top)       = return $ Set.singleton top
   sptrs (SchemeTopLifted (Value v)) = sptrs v
   sptrs (SchemeTopLifted Top)       = return $ Set.singleton top
   vptrs (SchemeTopLifted (Value v)) = vptrs v
   vptrs (SchemeTopLifted Top)       = return $ Set.singleton top

   -- Symbols
   symbol = SchemeTopLifted . Value . symbol
   symbols (SchemeTopLifted (Value v)) = symbols v
   -- XXX: is the definition of `symbols` actually possible 
   -- here? This set is actually infinite.
   symbols (SchemeTopLifted Top)     = undefined -- TODO

   -- Closures
   injectClo = SchemeTopLifted . Value . injectClo
   clos (SchemeTopLifted (Value v))  = clos v
   clos (SchemeTopLifted Top)        = undefined -- TODO

   -- Nil
   nil = SchemeTopLifted $ Value $ nil

   -- Unspecified
   unsp = SchemeTopLifted $ Value unsp

   -- Primitives
   prim = SchemeTopLifted . Value . prim
   -- XXX: same problem as with "symbols" but can 
   -- actually be precomputed, but the functional
   -- nature of Haskell does not allow us to 
   -- populate this set effectively...
   prims (SchemeTopLifted (Value v)) = prims v
   prims (SchemeTopLifted Top)       = undefined

   -- Procedures
   withProc f (SchemeTopLifted (Value v)) = withProc f v
   withProc f (SchemeTopLifted Top) = undefined

   isInteger = fmap isInteger
   isReal    = fmap isReal 
   isChar    = fmap isChar 
   isVecPtr  = fmap isVecPtr
   isStrPtr  = fmap isStrPtr 
   isPaiPtr  = fmap isPaiPtr 
   isSymbol  = fmap isSymbol 
   isClo     = fmap isClo 
   isBool    = fmap isBool 
   isNil     = fmap isNil 
   isUnsp    = fmap isUnsp 
   isPrim    = fmap isPrim 
   isProc    = fmap isProc 
