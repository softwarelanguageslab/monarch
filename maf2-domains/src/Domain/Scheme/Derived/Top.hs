{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE UndecidableInstances #-}

-- | Instance of @TopLifted@ for Scheme domains
module Domain.Scheme.Derived.Top where

import Control.DeepSeq
import qualified Data.Set as Set
import Domain.Actor
import Domain.Class
import Domain.Core.BoolDomain.Class
import Domain.Core.BoolDomain.TopLifted ()
import Domain.Core.CharDomain.Class
import Domain.Core.CharDomain.TopLifted ()
import Domain.Core.NumberDomain.Class
import Domain.Core.NumberDomain.TopLifted ()
import Domain.Core.StringDomain.TopLifted
import Domain.Scheme.Class
import GHC.Generics
import Lattice.Class
import Lattice.Equal
import Lattice.TopLiftedLattice (TopLifted (..), fromTL)
import Prelude hiding (length, acos, and, asin, atan, ceiling, cos, div, floor, log, not, or, round, sin, sqrt, tan)
import Control.Monad.Join (MonadBottom(..))
import Lattice.Trace (Trace (trace))
import Domain.Address (AddressWithCtx (replaceCtx))
import Domain.Core.StringDomain.Class (StringDomain (..))

-- | Lifts a value @a@ from the Scheme domain into a @TopLifted@ value so that all Scheme values have a synthetic top element
newtype SchemeTopLifted a = SchemeTopLifted {getTopLifted :: TopLifted a}
  deriving (Ord, Eq, Joinable, PartialOrder, Applicative, Foldable, Traversable, Functor, BottomLattice, EqualLattice, Generic)

instance Trace adr a  => Trace adr (SchemeTopLifted a) where
  trace = trace . getTopLifted

instance (Show a) => Show (SchemeTopLifted a) where
  show (SchemeTopLifted Top) = "⊤"
  show (SchemeTopLifted (Value v)) = show v

instance (NFData a) => NFData (SchemeTopLifted a)

instance TopLattice (SchemeTopLifted a) where
  top = SchemeTopLifted Top

instance (Domain a b) => Domain (SchemeTopLifted a) b where
  inject = SchemeTopLifted . Value . inject

instance (BoolDomain a) => BoolDomain (SchemeTopLifted a) where
  isTrue (SchemeTopLifted v) = isTrue v
  isFalse (SchemeTopLifted v) = isFalse v
  not = fmap not
  and = liftA2 and
  or = liftA2 or

instance (TopLattice bln, TopLattice int, TopLattice chr, StringDomain a bln int chr) => StringDomain (SchemeTopLifted a) bln int chr where
  length = length @_ @bln @int @chr . getTopLifted
  append (SchemeTopLifted a) (SchemeTopLifted b) = SchemeTopLifted <$> append @_ @bln @int @chr a b
  ref (SchemeTopLifted s) = ref @_ @bln @int @chr s
  stringLt (SchemeTopLifted a) (SchemeTopLifted b) = stringLt @_ @bln @int @chr a b
  toNumber = toNumber @_ @bln @int @chr  . getTopLifted
  makeString i = fmap SchemeTopLifted . makeString @_ @bln @int @chr i
  topString = SchemeTopLifted (topString @_ @bln @int @chr)
  set (SchemeTopLifted s) i = fmap SchemeTopLifted . set @_ @bln @int @chr s i

instance (CharDomain a int) => CharDomain (SchemeTopLifted a) (SchemeTopLifted int) where

  --- XXX: this is very close top the instance of @TopLifted@ in @Domain.Core.CharDomain.TopLifted@ see if
  -- some code can be shared
  downcase = traverse (downcase @_ @int)
  upcase = traverse (upcase @_ @int)
  charToInt = traverse charToInt
  isLower = fmap (fromTL boolTop . getTopLifted) . traverse (isLower @_ @int)
  isUpper = fmap (fromTL boolTop . getTopLifted) . traverse (isUpper @_ @int)
  charEq a = fmap (fromTL boolTop . getTopLifted) . sequenceA . liftA2 (charEq @_ @int) a
  charLt a = fmap (fromTL boolTop . getTopLifted) . sequenceA . liftA2 (charLt @_ @int) a
  charEqCI a = fmap (fromTL boolTop . getTopLifted) . sequenceA . liftA2 (charEqCI @_ @int) a
  charLtCI a = fmap (fromTL boolTop . getTopLifted) . sequenceA . liftA2 (charLtCI @_ @int) a

instance (NumberDomain a bln) => NumberDomain (SchemeTopLifted a) (SchemeTopLifted bln) where
  isZero = traverse isZero
  random = traverse (random @_ @bln)
  plus a = sequenceA . liftA2 (plus @_ @bln) a
  minus a = sequenceA . liftA2 (minus @_ @bln) a
  times a = sequenceA . liftA2 (times @_ @bln) a
  div a = sequenceA . liftA2 (div @_ @bln) a
  expt a = sequenceA . liftA2 (expt @_ @bln) a
  eq a = sequenceA . liftA2 (eq @_ @bln) a
  lt a = sequenceA . liftA2 (lt @_ @bln) a

type instance StrDom (SchemeTopLifted a) = (StrDom a)

instance (IntDomain a bln str rea, str ~ StrDom a, TopLattice str) =>
  IntDomain (SchemeTopLifted a)
            (SchemeTopLifted bln)
            str
            (SchemeTopLifted rea) where
  toReal = traverse (toReal @_ @bln @str)
  toString = fmap (fromTL top) . traverse (toString @_ @bln @_ @rea) . getTopLifted
  quotient a = sequenceA . liftA2 (quotient @_ @bln @str @rea) a
  modulo a = sequenceA . liftA2 (modulo @_ @bln @str @rea) a
  remainder a = sequenceA . liftA2 (remainder @_ @bln @str @rea) a

instance (RealDomain a bln int) => RealDomain (SchemeTopLifted a) (SchemeTopLifted bln) (SchemeTopLifted int) where
  toInt = traverse (toInt @_ @bln)
  ceiling = traverse (ceiling @_ @bln @int)
  floor = traverse (floor @_ @bln @int)
  round = traverse (round @_ @bln @int)
  log = traverse (log @_ @bln @int)
  sin = traverse (sin @_ @bln @int)
  asin = traverse (asin @_ @bln @int)
  cos = traverse (cos @_ @bln @int)
  acos = traverse (acos @_ @bln @int)
  tan = traverse (tan @_ @bln @int)
  atan = traverse (atan @_ @bln @int)
  sqrt = traverse (sqrt @_ @bln @int)

instance
  ( SchemeDomain a,
    TopLattice (Adr a),
    TopLattice (StrDom a)
  ) =>
  SchemeDomain (SchemeTopLifted a)
  where
  type Adr (SchemeTopLifted a) = Adr a
  type Env (SchemeTopLifted a) = Env a
  type Exp (SchemeTopLifted a) = Exp a

  -- Pointer injection
  pptr = SchemeTopLifted . Value . pptr
  sptr = SchemeTopLifted . Value . sptr
  vptr = SchemeTopLifted . Value . vptr

  -- Pointer extractions
  pptrs (SchemeTopLifted (Value v)) = pptrs v
  pptrs (SchemeTopLifted Top) = return $ Set.singleton top
  sptrs (SchemeTopLifted (Value v)) = sptrs v
  sptrs (SchemeTopLifted Top) = return $ Set.singleton top
  vptrs (SchemeTopLifted (Value v)) = vptrs v
  vptrs (SchemeTopLifted Top) = return $ Set.singleton top

  -- Symbols
  symbol = SchemeTopLifted . Value . symbol
  symbols (SchemeTopLifted (Value v)) = symbols v
  -- XXX: is the definition of `symbols` actually possible
  -- here? This set is actually infinite.
  symbols (SchemeTopLifted Top) = undefined -- TODO

  -- Closures
  injectClo = SchemeTopLifted . Value . injectClo
  clos (SchemeTopLifted (Value v)) = clos v
  clos (SchemeTopLifted Top) = undefined -- TODO

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
  prims (SchemeTopLifted Top) = undefined

  -- Procedures
  withProc f (SchemeTopLifted (Value v)) = withProc f v
  withProc _ (SchemeTopLifted Top) = undefined

  isInteger = fmap isInteger
  isReal = fmap isReal
  isChar = fmap isChar
  isVecPtr = fmap isVecPtr
  isStrPtr = fmap isStrPtr
  isPaiPtr = fmap isPaiPtr
  isSymbol = fmap isSymbol
  isClo = fmap isClo
  isBool = fmap isBool
  isNil = fmap isNil
  isUnsp = fmap isUnsp
  isPrim = fmap isPrim
  isProc = fmap isProc

------------------------------------------------------------
--- Actor instances
------------------------------------------------------------

instance (ActorDomain v) => ActorDomain (SchemeTopLifted v) where
  -- XXX: this shoudl actually be ARef (SchemeTopLifted v) but
  -- there is no sensible "aref" implementation without using sets
  -- containing top values, and even then the implementation of "send"
  -- becomes problematic.
  type ARef (SchemeTopLifted v) = ARef v

  aref = pure . aref
  arefs f = foldr (const . arefs f) mbottom -- TODO[severe]: this is actually unsound, but is the only possibility at the moment (cf. note above)
  isActorRef = foldr (const . isActorRef) boolTop . getTopLifted
  arefs' = foldr (const . arefs') Set.empty -- TODO[severe]: unsound (cf. above)

------------------------------------------------------------
-- AddressWithCtx
------------------------------------------------------------

instance (AddressWithCtx ctx v) => AddressWithCtx ctx (SchemeTopLifted v) where
  replaceCtx ctx' = SchemeTopLifted . fmap (replaceCtx ctx') . getTopLifted
