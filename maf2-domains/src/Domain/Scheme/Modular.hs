{-# LANGUAGE FlexibleContexts, UndecidableInstances, PatternSynonyms, FlexibleInstances, ConstraintKinds, PolyKinds, StandaloneKindSignatures, DataKinds #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module Domain.Scheme.Modular where

import Lattice
import Domain.Class
import Domain.Core
import Domain.Scheme.Class
import Control.Monad.Join
import Control.Monad.DomainError
import Control.Monad.AbstractM

import Prelude hiding (null, div, ceiling, round, floor, asin, sin, acos, cos, atan, tan, log, sqrt, length)
import Data.List hiding (null, length)
import Data.Maybe (isJust, fromMaybe)
import GHC.Generics
import Control.Applicative (Applicative(liftA2))
import Data.Set (Set)
import Data.Default
import qualified Data.Set as Set
import Control.Monad ((>=>), (<=<))
import qualified Control.Monad as M

import Data.Kind
import Data.Singletons
import Data.Singletons.Sigma

import Lattice.HMapLattice
import Data.TypeLevel.HMap ((::->), HMap, withC_, KeyIs, KeyIs1, ForAll, AtKey1, KeyKind, Assoc, genHKeys, All, ForAllOf, Dict(..), HMapKey, (:->), Const, Keys, MapWith, MapWithAt, BindingFrom)
import qualified Data.TypeLevel.HMap as HMap

maybeSingle :: Maybe a -> Set a
maybeSingle Nothing = Set.empty
maybeSingle (Just v) = Set.singleton v

(∪) :: Ord a => Set a -> Set a -> Set a
a ∪ b = Set.union a b
infixl 0 ∪


-- NOTE: below is an unused refactoring of the modular domain by using the representation 
-- in Data.TypeLevel.HMap 
--
-- This representation provides a sparse labeled product lattice which is both time and space
-- efficient. However, this refactoring is not yet completed, hence why it is unused.
--
-- The new representation is meant to be a drop⁻in replacement for the existing one.
-- A type alias 'ModularSchemeValue' with the same type parameters as before will be provided.
-- This type alias when then instantiate a map with the correct 'SchemeConfKey's for the given
-- parameters.
--
-- The currently used implementation can be found below and is marked as "Original implementation".


----------------------------------------------
-- Lattice configuration
----------------------------------------------


-- | Keys for a mapping [SchemeConfKey :-> Type] for 
-- configuring the subdomains in the modular lattice
data SchemeConfKey = RealConf   -- ^ abstraction for real numbers
                   | IntConf    -- ^ abstraction for integer numbers
                   | CharConf   -- ^ abstraction for characters
                   | BoolConf   -- ^ abstraction for booleans
                   | EnvConf    -- ^ abstraction for environments
                   | ExpConf    -- ^ concrete type of expressions
                   | StrConf    -- ^ type of string pointers
                   | PaiConf    -- ^ type of pair pointers
                   | VecConf    -- ^ type of vector pointers
                   | VarConf    -- ^ type of regular pointers

----------------------------------------------
-- Modular Scheme lattice
----------------------------------------------

-- | Internal keys for the internal HMap representation of the lattice
data SchemeKey = RealKey
               | IntKey
               | CharKey
               | BoolKey
               | PaiKey
               | VecKey
               | StrKey
               | CloKey
               | UnspKey
               | NilKey
               | PrimKey
               deriving (Ord, Eq)

genHKeys ''SchemeKey


-- | Mapping associating keys with the abstract values they store
--
-- Type parameter 'm' denotes a SchemeConf mapping to configure the abstract domain.
type Values m = '[
   RealKey ::-> Assoc RealConf m,
   IntKey  ::-> Assoc IntConf m,
   CharKey ::-> Assoc CharConf m,
   BoolKey ::-> Assoc BoolConf m,
   PaiKey  ::-> Set (Assoc PaiConf m),
   VecKey  ::-> Set (Assoc VecConf m),
   StrKey  ::-> Set (Assoc StrConf m),
   UnspKey ::-> (),
   NilKey  ::-> (),
   CloKey  ::-> Set (Assoc ExpConf m, Assoc EnvConf m),
   PrimKey  ::-> Set String
   ]


-- | A Scheme value is an HMap that consists of a mapping
-- from SchemeKeys to some values. 
-- 
-- The values ncluded in this map should satisfy the 
-- constraints given in `IsSchemeValue`.
newtype SchemeVal (m :: [SchemeConfKey :-> Type]) = SchemeVal { getSchemeVal :: HMap (Values m) }

-- | A valid choice for `m` and `c` should satisfy these constraints
type IsSchemeValue m =
   (ForAll SchemeKey (AtKey1 JoinLattice (Values m)),
    ForAll SchemeKey (AtKey1 Eq (Values m)),
    ForAll SchemeKey (AtKey1 Joinable (Values m)),
    -- expected subdomains
    KeyIs1 RealDomain (Values m) RealKey,
    KeyIs1 BoolDomain (Values m) BoolKey,
    KeyIs1 IntDomain  (Values m)  IntKey,
    KeyIs1 CharDomain (Values m) CharKey,
    -- relations between subdomains
    IntC (Assoc CharKey (Values m)) ~ Assoc IntKey (Values m),
    Boo (Assoc IntKey (Values m)) ~ Boo (Assoc RealKey (Values m)),
    Boo (Assoc RealKey (Values m)) ~ Assoc BoolConf m,
    Rea (Assoc IntKey (Values m)) ~ Assoc RealKey (Values m),
    IntR (Assoc RealKey (Values m)) ~ Assoc IntKey (Values m),
    -- addresses
    Address (Assoc VarConf m),
    Address (Assoc PaiConf m),
    Address (Assoc VecConf m),
    Address (Assoc StrConf m))

-- Eq instance
deriving instance (HMapKey (Values m), ForAll SchemeKey (AtKey1 Eq (Values m))) => Eq (SchemeVal m)
deriving instance (HMapKey (Values m), ForAll SchemeKey (AtKey1 Eq (Values m)), ForAll SchemeKey (AtKey1 Ord (Values m))) => Ord (SchemeVal m)

------------------------------------------------------------
-- Lattice instances
------------------------------------------------------------

deriving instance (HMapKey (Values m), ForAll SchemeKey (AtKey1 Joinable (Values m))) => Joinable (SchemeVal m)
deriving instance (HMapKey (Values m),
                   ForAll SchemeKey (AtKey1 Eq (Values m)),
                   ForAll SchemeKey (AtKey1 Joinable (Values m)),
                   ForAll SchemeKey (AtKey1 JoinLattice (Values m))) => JoinLattice (SchemeVal m)

-- Show instance
instance (ForAll SchemeKey (AtKey1 Show (Values m))) => Show (SchemeVal m) where
   show (SchemeVal hm) = HMap.foldr append' "" (HMap.map' (withC_ @(AtKey1 Show (Values m)) show) hm)
      where append' :: forall (kt :: SchemeKey) . Sing kt -> MapWithAt (Const String) kt (Values m)  -> String -> String
            append' = const (HMap.withFacts @(Const String) @kt @(Values m) (++))

------------------------------------------------------------
-- Utilities
------------------------------------------------------------

-- | Returns the value at CharKey from the SchemeValue
-- or escapes with `WrongType` for any other key.
chars' :: forall m mp . (IsSchemeValue mp, AbstractM m) => SchemeVal mp -> m (Assoc CharKey (Values mp))
chars' v = mjoins $ HMap.mapList select (getSchemeVal v)
   where select :: forall (kt :: SchemeKey) . Sing kt -> Assoc kt (Values mp) -> m (Assoc CharKey (Values mp))
         select SCharKey c = return c
         select _ _ = escape WrongType


injectChar :: Assoc CharKey (Values m) -> SchemeVal m
injectChar = SchemeVal . HMap.singleton @CharKey

injectInt :: Assoc IntKey (Values m) -> SchemeVal m
injectInt = SchemeVal . HMap.singleton @IntKey

------------------------------------------------------------
-- Domains
------------------------------------------------------------

-- TODO: IsSchemeValue is probably too strict here and could be relaxed to fewer constraints
instance (IsSchemeValue m) => Domain (SchemeVal m) Bool where
  inject = SchemeVal . HMap.singleton @BoolKey . inject
instance (IsSchemeValue m) => Domain (SchemeVal m) Integer where
  inject = SchemeVal . HMap.singleton @IntKey . inject
instance (IsSchemeValue m) => Domain (SchemeVal m) Double where
   inject = SchemeVal . HMap.singleton @RealKey . inject
instance (IsSchemeValue m) => Domain (SchemeVal m) Char where
   inject = SchemeVal . HMap.singleton @CharKey . inject


instance (IsSchemeValue m) => BoolDomain (SchemeVal m) where
   isTrue = HMap.foldr ors False . HMap.map' trueish . getSchemeVal
      where trueish :: forall (kt :: SchemeKey) . Sing kt -> Assoc kt (Values m) -> Bool
            trueish SBoolKey boolean = isTrue boolean
            trueish _ _  = True -- anything else is true
            ors :: forall (kt :: SchemeKey) . Sing kt -> MapWithAt (Const Bool) kt (Values m) -> Bool -> Bool
            ors _ = HMap.withFacts @(Const Bool) @kt @(Values m) (||)

   -- only `#f` is false
   isFalse = HMap.foldr ors False . HMap.map' falsish . getSchemeVal
      where falsish :: forall (kt :: SchemeKey) . Sing kt -> Assoc kt (Values m) -> Bool
            falsish SBoolKey boolean = isFalse boolean
            falsish _ _ = False
            ors :: forall (kt :: SchemeKey) . Sing kt -> MapWithAt (Const Bool) kt (Values m) -> Bool -> Bool
            ors _ = HMap.withFacts @(Const Bool) @kt @(Values m) (||)

   boolTop = SchemeVal $ HMap.singleton @BoolKey boolTop
   not v = join t f
      where t = if isTrue  v then inject False else bottom
            f = if isFalse v then inject True else bottom

------------------------------------------------------------
-- CharDomain
------------------------------------------------------------

-- | An instance for the character domain assuming that our underlying representation
-- for integers is shared with the underlying character domain that we are using.
instance (IsSchemeValue m, IntC (Assoc CharKey (Values m)) ~ Assoc IntKey (Values m)) => CharDomain (SchemeVal m) where
   type IntC (SchemeVal m) = (SchemeVal m)

   downcase  = chars' >=> downcase >=> (return . injectChar)
   upcase    = chars' >=> upcase   >=> (return . injectChar)
   charToInt = chars' >=> charToInt >=> (return . injectInt)
   isLower   = chars' >=> isLower
   isUpper   = chars' >=> isUpper
   charEq a b = M.join $ liftA2 charEq (chars' a) (chars' b)
   charLt a b = M.join $ liftA2 charLt (chars' a) (chars' b)
   charEqCI a b = M.join $ liftA2 charEqCI (chars' a) (chars' b)
   charLtCI a b = M.join $ liftA2 charLtCI (chars' a) (chars' b)

------------------------------------------------------------
-- Number domain
------------------------------------------------------------

type IntOf m = Assoc IntKey (Values m)
type ReaOf m = Assoc RealKey (Values m)
type BooOf m = Assoc BoolKey (Values m)
type ValOf m k = Assoc k (Values m)

coerce' :: forall (kt1 :: SchemeKey) (kt2 :: SchemeKey) schemeM m .
           (AbstractM schemeM, IsSchemeValue m, SingI kt1, SingI kt2)
        => (IntOf m -> IntOf m -> schemeM (ValOf m kt1)) -- ^ the integer operation 
        -> (ReaOf m -> ReaOf m -> schemeM (ValOf m kt2)) -- ^ the real operation
        -> SchemeVal m -> SchemeVal m -> schemeM (SchemeVal m)
coerce' intOp realOp = prim2 select
   where select (SIntKey :&: v1) (SIntKey :&: v2)  =
            SchemeVal <$> HMap.singleton @kt1 <$> intOp v1 v2
         select (SRealKey :&: v1) (SIntKey :&: v2) =
            toReal v2 >>= (fmap (SchemeVal . HMap.singleton @kt2) . realOp v1)
         select (SIntKey :&: v1) (SRealKey :&: v2) =
            toReal v1 >>= (fmap (SchemeVal . HMap.singleton @kt2) . flip realOp v2)
         select (SRealKey :&: v1) (SRealKey :&: v2) =
            SchemeVal . HMap.singleton @kt2 <$> realOp v1 v2
         select _ _ = escape WrongType

coerceNum :: (AbstractM schemeM, IsSchemeValue m)
        => (IntOf m -> IntOf m -> schemeM (IntOf m)) -- ^ the integer operation 
        -> (ReaOf m -> ReaOf m -> schemeM (ReaOf m)) -- ^ the real operation
        -> SchemeVal m -> SchemeVal m -> schemeM (SchemeVal m)
coerceNum = coerce' @IntKey @RealKey
coerceBoo :: (AbstractM schemeM, IsSchemeValue m)
        => (IntOf m -> IntOf m -> schemeM (BooOf m)) -- ^ the integer operation 
        -> (ReaOf m -> ReaOf m -> schemeM (BooOf m)) -- ^ the real operation
        -> SchemeVal m -> SchemeVal m -> schemeM (SchemeVal m)
coerceBoo = coerce' @BoolKey @BoolKey


prim2 :: (IsSchemeValue m, AbstractM schemeM)
      => (BindingFrom (Values m) -> BindingFrom (Values m) -> schemeM (SchemeVal m))
      -> SchemeVal m -> SchemeVal m -> schemeM (SchemeVal m)
prim2 f (SchemeVal hm1) (SchemeVal hm2) = mjoins $ map (uncurry f) $ liftA2 (,) (HMap.toList hm1) (HMap.toList hm2)

instance (IsSchemeValue m) => NumberDomain (SchemeVal m) where
   type Boo (SchemeVal m) = SchemeVal m
   isZero = mjoins . HMap.mapList select  . getSchemeVal
      where select :: forall (kt :: SchemeKey) schemeM .  (AbstractM schemeM) => Sing kt -> Assoc kt (Values m) -> schemeM (SchemeVal m)
            select SIntKey v  = SchemeVal <$> HMap.singleton @BoolKey <$> isZero v
            select SRealKey v = SchemeVal <$> HMap.singleton @BoolKey <$> isZero v
            select _ _ = escape WrongType
   random = mjoins . HMap.mapList select . getSchemeVal
      where select :: forall (kt :: SchemeKey) schemeM . (AbstractM schemeM) => Sing kt -> Assoc kt (Values m) -> schemeM (SchemeVal m)
            select SIntKey v = SchemeVal <$> HMap.singleton @IntKey <$> random v
            select SRealKey v = SchemeVal <$> HMap.singleton @RealKey <$> random v
   plus  = coerceNum plus plus
   minus = coerceNum minus minus
   times = coerceNum times times
   div   = coerceNum div div
   expt  = coerceNum expt expt
   eq    = coerceBoo eq eq
   lt    = coerceBoo lt lt

------------------------------------------------------------
-- Integer domain
------------------------------------------------------------

typeErrorOp :: JoinLattice a => AbstractM m => b -> c -> m a
typeErrorOp _ = const $ escape WrongType


instance (IsSchemeValue m) => IntDomain (SchemeVal m) where
   type Str (SchemeVal m) = ()
   type Rea (SchemeVal m) = SchemeVal m
   toReal = mjoins . HMap.mapList select . getSchemeVal
      where select :: forall (kt :: SchemeKey) schemeM . AbstractM schemeM => Sing kt -> Assoc kt (Values m) -> schemeM (SchemeVal m)
            select SIntKey v  = SchemeVal . HMap.singleton @RealKey <$> toReal v
            select SRealKey v = return $ SchemeVal $ HMap.singleton @RealKey v
            select _ _ = escape WrongType
   quotient  = coerceNum quotient  typeErrorOp
   modulo    = coerceNum modulo    typeErrorOp
   remainder = coerceNum remainder typeErrorOp

------------------------------------------------------------
-- Real domain
------------------------------------------------------------

coerce1R' :: forall schemeM m .
           (AbstractM schemeM, IsSchemeValue m)
        => (ReaOf m -> schemeM (ReaOf m))
        -> SchemeVal m -> schemeM (SchemeVal m)
coerce1R' f = mjoins . HMap.mapList select . getSchemeVal
   where select :: forall (kt :: SchemeKey) . Sing kt -> Assoc kt (Values m) -> schemeM (SchemeVal m)
         select SIntKey v = SchemeVal . HMap.singleton @RealKey <$> (toReal v >>= f)
         select SRealKey v = SchemeVal . HMap.singleton @RealKey <$> f v

instance (IsSchemeValue m) => RealDomain (SchemeVal m) where
   type IntR (SchemeVal m) = SchemeVal m
   toInt = mjoins . HMap.mapList select . getSchemeVal
      where select :: forall (kt :: SchemeKey) schemeM . AbstractM schemeM => Sing kt -> Assoc kt (Values m) -> schemeM (SchemeVal m)
            select SIntKey  v = return $ SchemeVal $ HMap.singleton @IntKey v
            select SRealKey v = SchemeVal . HMap.singleton @IntKey <$> toInt v
            select _ _        = escape WrongType
   ceiling = coerce1R' ceiling
   floor   = coerce1R' floor
   round   = coerce1R' round
   log     = coerce1R' log
   sin     = coerce1R' sin
   asin    = coerce1R' asin
   cos     = coerce1R' cos
   acos    = coerce1R' acos
   tan     = coerce1R' tan
   atan    = coerce1R' atan
   sqrt    = coerce1R' sqrt


------------------------------------------------------------
-- SchemeDomain
------------------------------------------------------------

instance (IsSchemeValue m) => SchemeDomain (SchemeVal m) where
   type Adr  (SchemeVal m) = Assoc VarConf m
   type PAdr (SchemeVal m) = Assoc PaiConf m
   type VAdr (SchemeVal m) = Assoc VecConf m
   type SAdr (SchemeVal m) = Assoc StrConf m
   type Env  (SchemeVal m) = Assoc EnvConf m
   type Exp  (SchemeVal m) = Assoc ExpConf m

   -- Pointer injection
   pptr = SchemeVal . HMap.singleton @PaiKey . Set.singleton
   vptr = SchemeVal . HMap.singleton @VecKey . Set.singleton
   sptr = SchemeVal . HMap.singleton @StrKey . Set.singleton

   -- Pointer extraction
   pptrs = mjoins . HMap.mapList select . getSchemeVal
      where select :: forall (kt :: SchemeKey) schemeM . AbstractM schemeM => Sing kt -> Assoc kt (Values m) -> schemeM (Set (Assoc PaiConf m))
            select SPaiKey p = return p
            select _ _ = escape WrongType
   vptrs = mjoins . HMap.mapList select . getSchemeVal
      where select :: forall (kt :: SchemeKey) schemeM . AbstractM schemeM => Sing kt -> Assoc kt (Values m) -> schemeM (Set (Assoc VecConf m))
            select SVecKey p = return p
            select _ _ = escape WrongType
   sptrs = mjoins . HMap.mapList select . getSchemeVal
      where select :: forall (kt :: SchemeKey) schemeM . AbstractM schemeM => Sing kt -> Assoc kt (Values m) -> schemeM (Set (Assoc StrConf m))
            select SStrKey p = return p
            select _ _ = escape WrongType


   -- Closures
   injectClo = SchemeVal . HMap.singleton @CloKey . Set.singleton
   clos = fromMaybe Set.empty . HMap.get @CloKey . getSchemeVal

   -- Null
   nil = SchemeVal $ HMap.singleton @NilKey ()

   -- Unspecified
   unsp = SchemeVal $ HMap.singleton @UnspKey ()

   -- Primitives
   prim = SchemeVal . HMap.singleton @PrimKey . Set.singleton
   prims = fromMaybe Set.empty . HMap.get @PrimKey . getSchemeVal

   -- | Extracting procedures
   withProc :: forall schemeM a . (AbstractM schemeM, JoinLattice a) => (Either String (Exp (SchemeVal m), Env (SchemeVal m)) -> schemeM a) -> SchemeVal m ->  schemeM a
   withProc f = mjoins . HMap.mapList select . getSchemeVal
      where select :: forall (kt :: SchemeKey) . Sing kt -> Assoc kt (Values m) -> schemeM a
            select SCloKey clos = Set.foldr (mjoin . f . Right) mzero clos
            select SPrimKey prs = Set.foldr (mjoin . f . Left) mzero prs

   -- Predicates
   isInteger = HMap.member @IntKey  . getSchemeVal
   isReal    = HMap.member @RealKey . getSchemeVal
   isChar    = HMap.member @CharKey . getSchemeVal
   isPaiPtr  = HMap.member @PaiKey  . getSchemeVal
   isVecPtr  = HMap.member @VecKey  . getSchemeVal
   isStrPtr  = HMap.member @StrKey  . getSchemeVal
   isClo     = HMap.member @CloKey  . getSchemeVal
   isBool    = HMap.member @BoolKey . getSchemeVal
   isUnsp    = HMap.member @UnspKey . getSchemeVal
   isNil     = HMap.member @NilKey  . getSchemeVal
   isPrim    = HMap.member @PrimKey . getSchemeVal

------------------------------------------------------------
-- Original implementation
------------------------------------------------------------


-- A generic instance for the Scheme domain, parametrized by their sublattices
type ModularSchemeValue r i c b pai vec str var exp env = SchemeVal '[
      RealConf ::-> r,
      IntConf  ::-> i,
      CharConf ::-> c,
      BoolConf ::-> b,
      EnvConf  ::-> env,
      ExpConf  ::-> exp,
      StrConf  ::-> str,
      PaiConf  ::-> pai,
      VecConf  ::-> vec,
      VarConf  ::-> var
   ]

------------------------------------------------------------
-- String domain specific to ModularSchemeValue
------------------------------------------------------------

type IsSchemeString s m = (
   StringDomain s,
   Assoc CharKey (Values m) ~ ChaS s,
   Assoc IntKey (Values m)  ~ IntS s,
   Assoc BoolKey (Values m) ~ BooS s)

newtype SchemeString s v = SchemeString { sconst :: s } deriving (Show, Eq, Ord)

instance (Joinable s) => Joinable (SchemeString s v) where
   join a b = SchemeString (join (sconst a) (sconst b))

instance (JoinLattice s) => JoinLattice (SchemeString s v) where
   subsumes a b = subsumes (sconst a) (sconst b)
   bottom = SchemeString bottom
instance (StringDomain s) => Domain (SchemeString s v) String where
   inject = SchemeString . inject
instance (IsSchemeValue m, IsSchemeString s m) => StringDomain (SchemeString s (SchemeVal m)) where
   type IntS (SchemeString s (SchemeVal m)) = SchemeVal m
   type ChaS (SchemeString s (SchemeVal m)) = SchemeVal m
   type BooS (SchemeString s (SchemeVal m)) = SchemeVal m

   length = (length . sconst) >=> (return . SchemeVal . HMap.singleton @IntKey)
   append s1 s2 = SchemeString <$> append (sconst s1) (sconst s2)
   ref s i = SchemeVal . HMap.singleton @CharKey <$> (ref (sconst s) =<< integers i)
      where integers = mjoins . HMap.mapList select . getSchemeVal
            select :: forall (kt :: SchemeKey) schemeM . AbstractM schemeM => Sing kt ->  Assoc kt (Values m) -> schemeM (IntOf m)
            select SIntKey v = return  v
            select _ _ = escape WrongType
   stringLt s1 s2  = SchemeVal . HMap.singleton @BoolKey <$> stringLt (sconst s1) (sconst s2)
   toNumber = (toNumber . sconst) >=> (return . SchemeVal . HMap.singleton @IntKey)
