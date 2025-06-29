{-# LANGUAGE FlexibleContexts, UndecidableInstances, PatternSynonyms, FlexibleInstances, ConstraintKinds, PolyKinds, StandaloneKindSignatures, DataKinds, ScopedTypeVariables #-}
{-# LANGUAGE AllowAmbiguousTypes, DeriveGeneric #-}

module Domain.Scheme.Modular(
   -- * Constraints
   IsSchemeValue,
   -- * SchemeValues
   ModularSchemeValue,
   SchemeConfKey(..),
   SchemeKey(..),
   SSchemeKey(..),
   SchemeVal(..),
   Values,
   SchemeString(..),
   -- * Insertion
   insertInt,
   insertChar,
   insertBool,
   -- * Extraction
   integers,
   -- * Type checking
   hasType,
   -- * Shorthands
   Beh,
   Clo
) where

import Lattice
import Lattice.Trace
import Lattice.PointerSetLattice
import Domain.Address
import Domain.Class
import Domain.Core
import Domain.Scheme.Class
import Control.Monad.Join
import Control.Monad.DomainError
import Control.Monad.Escape
import Control.Monad.AbstractM
import Control.DeepSeq
import GHC.Generics

import Prelude hiding (null, div, ceiling, round, floor, asin, sin, acos, cos, atan, tan, log, sqrt, length)
import Data.Maybe (fromMaybe)
import Control.Applicative (Applicative(liftA2))
import Data.Set (Set)
import qualified Data.Set as Set
import Control.Monad ((>=>))

import Data.Kind
import Data.Singletons
import Data.Singletons.Sigma

import Data.TypeLevel.HMap ((::->), HMap, withC_, KeyIs1, ForAll, AtKey1, Assoc, genHKeys, All, ForAllOf, Dict(..), HMapKey, (:->), Const, MapWithAt, BindingFrom)
import qualified Data.TypeLevel.HMap as HMap
import Data.List (intercalate)
import Text.Printf (printf)
import Lattice.CSetLattice (CSet (CSet))
import qualified Lattice.CSetLattice as CSet
import Debug.Trace
import Syntax.Span (spanOf, SpanOf)
import qualified Data.List as List
import Data.Bifunctor
import Data.TypeLevel.AssocList (KeyIs)

maybeSingle :: Maybe a -> Set a
maybeSingle Nothing = Set.empty
maybeSingle (Just v) = Set.singleton v

(∪) :: Ord a => Set a -> Set a -> Set a
a ∪ b = Set.union a b
infixl 0 ∪

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
                   | AdrConf    -- ^ type of pointers
                   | StrConf    -- ^ abstraction for strings
                   -- λα
                   | PidConf    -- ^ type of actor references
                   -- λα/c
                   | MoαConf    -- ^ pointer to actor monitors
                   | BeCConf    -- ^ abstraction for behavior contracts
                   | ComConf    -- ^ abstraction for communication contracts
                   | PMeConf    -- ^ pointer to message contracts
                   | FlaConf    -- ^ pointer to flat contracts

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
               | SymKey
               -- λα
               | PidKey
               | BehKey
               -- λα/c
               | MoαKey
               | BeCKey
               | ComKey
               | MeCKey
               | FlaKey
               deriving (Ord, Eq, Show, Generic)

instance NFData SchemeKey
genHKeys ''SchemeKey


-- | Mapping associating keys with the abstract values they store
--
-- Type parameter 'm' denotes a SchemeConf mapping to configure the abstract domain.
type Values m = '[
   RealKey ::-> Assoc RealConf m,
   IntKey  ::-> Assoc IntConf m,
   CharKey ::-> Assoc CharConf m,
   BoolKey ::-> Assoc BoolConf m,
   PaiKey  ::-> PointerSet (Assoc AdrConf m),
   VecKey  ::-> PointerSet (Assoc AdrConf m),
   StrKey  ::-> PointerSet (Assoc AdrConf m),
   UnspKey ::-> (),
   NilKey  ::-> (),
   CloKey  ::-> Set (Assoc ExpConf m, Assoc EnvConf m),
   PrimKey ::-> CSet String,
   SymKey  ::-> CSet String,
   -- λα language
   PidKey  ::-> Set (Assoc PidConf m),
   BehKey  ::-> Set (Assoc ExpConf m, Assoc EnvConf m),
   -- λα/c language
   MoαKey  ::-> Set (Assoc MoαConf m),
   BeCKey  ::-> Assoc BeCConf m,
   MeCKey  ::-> Set (Assoc PMeConf m),
   FlaKey  ::-> Set (Assoc FlaConf m),
   ComKey  ::-> Assoc ComConf m
   ]

hasType :: (BoolDomain b, BottomLattice b) => SchemeKey -> SchemeVal m -> b
hasType k = containsType k . getSchemeVal

-- | A Scheme value is an HMap that consists of a mapping
-- from SchemeKeys to some values. 
-- 
-- The values ncluded in this map should satisfy the 
-- constraints given in `IsSchemeValue`.
newtype SchemeVal (m :: [SchemeConfKey :-> Type]) = SchemeVal { getSchemeVal :: HMap (Values m) } deriving (Generic)

instance NFData (SchemeVal m)

data RealDomainWith bln int :: Type ~> Constraint
type instance Apply (RealDomainWith bln int) r = RealDomain r bln int 

data IntDomainWith bln str rea :: Type ~> Constraint
type instance Apply (IntDomainWith bln str rea) i = IntDomain i bln str rea

data CharDomainWith int :: Type ~> Constraint
type instance Apply (CharDomainWith int) c = CharDomain c int

-- | A valid choice for `m` and `c` should satisfy these constraints
type IsSchemeValue m =
   (ForAll SchemeKey (AtKey1 Eq (Values m)),
    ForAll SchemeKey (AtKey1 PartialOrder (Values m)),
    ForAll SchemeKey (AtKey1 Joinable (Values m)),
    -- expected subdomains
    KeyIs (RealDomainWith (Assoc BoolKey (Values m)) (Assoc IntKey (Values m))) (Values m) RealKey,
    KeyIs1 BoolDomain (Values m) BoolKey,
    KeyIs (IntDomainWith (Assoc BoolKey (Values m)) (StrDom (SchemeVal m)) (Assoc RealKey (Values m))) (Values m) IntKey,
    KeyIs (CharDomainWith (Assoc IntKey (Values m))) (Values m) CharKey,
    -- addresses
    Address (Assoc AdrConf m))

-- Eq instance
deriving instance (HMapKey (Values m), ForAll SchemeKey (AtKey1 Eq (Values m))) => Eq (SchemeVal m)
deriving instance (HMapKey (Values m), ForAll SchemeKey (AtKey1 Eq (Values m)), ForAll SchemeKey (AtKey1 Ord (Values m))) => Ord (SchemeVal m)

------------------------------------------------------------
-- Lattice instances
------------------------------------------------------------

deriving instance (HMapKey (Values m), ForAll SchemeKey (AtKey1 (Trace adr) (Values m)), Ord adr) => Trace adr (SchemeVal m)
deriving instance (HMapKey (Values m), ForAll SchemeKey (AtKey1 Joinable (Values m))) => Joinable (SchemeVal m)
deriving instance BottomLattice (SchemeVal m)

-- Show instance
-- TODO: this should be valid for any HMap, maybe make it the default implementation?
instance (ForAll SchemeKey (AtKey1 Show (Values m)), SpanOf (Assoc ExpConf m), Show (Assoc ExpConf m)) => Show (SchemeVal m) where
   show (SchemeVal hm) = intercalate "," $ map showElement $ HMap.toList hm
      where showElement :: BindingFrom (Values m) -> String
            showElement (SCloKey :&: clos') =
               "CloKey -> {" ++ List.intercalate "," (Set.toList $ Set.map (\(expr, _) -> "<procedure: " ++ show (spanOf expr) ++ ">") clos') ++ "}"
            showElement (key :&: value) =
               printf "%s -> %s" (show $ fromSing key) (withC_ @(AtKey1 Show (Values m)) (show value) key)

-- EqualLattice
instance (IsSchemeValue m, ForAll SchemeKey (AtKey1 EqualLattice (Values m))) => EqualLattice (SchemeVal m) where
   eql a b
      | a == bottom || b == bottom = bottom
      | HMap.isSingleton (getSchemeVal a) && HMap.isSingleton (getSchemeVal b) =
         joins $ HMap.mapList (HMap.withC @(AtKey1 EqualLattice (Values m)) check) (getSchemeVal a)
      | otherwise = boolTop
     where check ::  forall (kt :: SchemeKey) b . (BoolDomain b, BottomLattice b, EqualLattice (Assoc kt (Values m))) => Sing kt -> Assoc kt (Values m) -> b
           check Sing v = maybe (inject False) (eql v) (HMap.get @kt (getSchemeVal b))

------------------------------------------------------------
-- Utilities
------------------------------------------------------------

-- | Returns the value at CharKey from the SchemeValue
-- or escapes with `WrongType` for any other key.
chars' :: forall mp m a . (AbstractM m) => (Assoc CharKey (Values mp) -> m a) -> SchemeVal mp -> m a
chars' f  = maybe (escape WrongType) f . HMap.get @CharKey . getSchemeVal

chars :: forall mp . SchemeVal mp -> Maybe (Assoc CharKey (Values mp))
chars = HMap.get @CharKey . getSchemeVal

injectChar :: Assoc CharKey (Values m) -> SchemeVal m
injectChar = SchemeVal . HMap.singleton @CharKey

injectInt :: Assoc IntKey (Values m) -> SchemeVal m
injectInt = SchemeVal . HMap.singleton @IntKey

------------------------------------------------------------
-- Shorthands 
------------------------------------------------------------

type Clo m = (Assoc ExpConf m, Assoc EnvConf m)
type Beh m = (Assoc ExpConf m, Assoc EnvConf m)

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

   or a b = justOrBot $ cond (pure a) (pure a) (pure b)
   and a b = justOrBot $ cond (pure a) (cond (pure b) (pure b) (pure false)) (pure false)
   boolTop = SchemeVal $ HMap.singleton @BoolKey boolTop
   not v = join t f
      where t = if isTrue  v then inject False else bottom
            f = if isFalse v then inject True else bottom

------------------------------------------------------------
-- CharDomain
------------------------------------------------------------

-- | An instance for the character domain assuming that our underlying representation
-- for integers is shared with the underlying character domain that we are using.
instance (IsSchemeValue m, CharDomain (Assoc CharKey (Values m)) (Assoc IntKey (Values m))) => CharDomain (SchemeVal m) (SchemeVal m) where
   downcase  = chars' (downcase @_ @(Assoc IntKey (Values m)) >=> (return . injectChar))
   upcase    = chars' ( upcase @_ @(Assoc IntKey (Values m))  >=> (return . injectChar))
   charToInt = chars' (charToInt >=> (return . injectInt))
   isLower   = chars' (isLower @_ @(Assoc IntKey (Values m)))
   isUpper   = chars' (isUpper @_ @(Assoc IntKey (Values m)))
   charEq   a b = fromMaybe (escape WrongType) $ liftA2 (charEq @_ @(Assoc IntKey (Values m))) (chars a) (chars b)
   charLt   a b = fromMaybe (escape WrongType) $ liftA2 (charLt @_ @(Assoc IntKey (Values m))) (chars a) (chars b)
   charEqCI a b = fromMaybe (escape WrongType) $ liftA2 (charEqCI @_ @(Assoc IntKey (Values m))) (chars a) (chars b)
   charLtCI a b = fromMaybe (escape WrongType) $ liftA2 (charLtCI @_ @(Assoc IntKey (Values m))) (chars a) (chars b)

------------------------------------------------------------
-- Number domain
------------------------------------------------------------

type IntOf m = Assoc IntKey (Values m)
type ReaOf m = Assoc RealKey (Values m)
type BooOf m = Assoc BoolKey (Values m)
type StrOf m = StrDom (SchemeVal m)
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
            toReal @_ @(BooOf m) @(StrOf m) v2 >>= (fmap (SchemeVal . HMap.singleton @kt2) . realOp v1)
         select (SIntKey :&: v1) (SRealKey :&: v2) =
            toReal @_ @(BooOf m) @(StrOf m) v1 >>= (fmap (SchemeVal . HMap.singleton @kt2) . flip realOp v2)
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

instance (IsSchemeValue m) => NumberDomain (SchemeVal m) (SchemeVal m) where
   isZero = mjoins . HMap.mapList select  . getSchemeVal
      where select :: forall (kt :: SchemeKey) schemeM .  (AbstractM schemeM) => Sing kt -> Assoc kt (Values m) -> schemeM (SchemeVal m)
            select SIntKey v  = SchemeVal <$> HMap.singleton @BoolKey <$> isZero v
            select SRealKey v = SchemeVal <$> HMap.singleton @BoolKey <$> isZero v
            select _ _ = escape WrongType
   random = mjoins . HMap.mapList select . getSchemeVal
      where select :: forall (kt :: SchemeKey) schemeM . (AbstractM schemeM) => Sing kt -> Assoc kt (Values m) -> schemeM (SchemeVal m)
            select SIntKey v = SchemeVal <$> HMap.singleton @IntKey <$> random @_ @(BooOf m) v
            select SRealKey v = SchemeVal <$> HMap.singleton @RealKey <$> random @_ @(BooOf m) v
            select _ _ = escape WrongType
   plus  = coerceNum (plus @_ @(BooOf m)) (plus @_ @(BooOf m))
   minus = coerceNum (minus @_ @(BooOf m)) (minus @_ @(BooOf m))
   times = coerceNum (times @_ @(BooOf m)) (times @_ @(BooOf m))
   div   = coerceNum (div @_ @(BooOf m)) (div @_ @(BooOf m))
   expt  = coerceNum (expt @_ @(BooOf m)) (expt @_ @(BooOf m))
   eq    = coerceBoo eq eq
   lt    = coerceBoo lt lt

------------------------------------------------------------
-- Integer domain
------------------------------------------------------------

typeErrorOp :: AbstractM m => b -> c -> m a
typeErrorOp _ = const $ escape WrongType


instance (IsSchemeValue m, s ~ StrDom (SchemeVal m)) => IntDomain (SchemeVal m) (SchemeVal m) s (SchemeVal m) where
   toReal = mjoins . HMap.mapList select . getSchemeVal
      where select :: forall (kt :: SchemeKey) schemeM . AbstractM schemeM => Sing kt -> Assoc kt (Values m) -> schemeM (SchemeVal m)
            select SIntKey v  = SchemeVal . HMap.singleton @RealKey <$> (toReal @_ @(BooOf m) @(StrOf m)) v
            select SRealKey v = return $ SchemeVal $ HMap.singleton @RealKey v
            select _ _ = escape WrongType
   quotient  = coerceNum (quotient @_ @(BooOf m) @(StrOf m) @(ReaOf m))  typeErrorOp
   modulo    = coerceNum (modulo @_ @(BooOf m) @(StrOf m) @(ReaOf m))    typeErrorOp
   remainder = coerceNum (remainder @_ @(BooOf m) @(StrOf m) @(ReaOf m)) typeErrorOp

------------------------------------------------------------
-- Real domain
------------------------------------------------------------

coerce1R' :: forall schemeM m .
           (AbstractM schemeM, IsSchemeValue m)
        => (ReaOf m -> schemeM (ReaOf m))
        -> SchemeVal m -> schemeM (SchemeVal m)
coerce1R' f = mjoins . HMap.mapList select . getSchemeVal
   where select :: forall (kt :: SchemeKey) . Sing kt -> Assoc kt (Values m) -> schemeM (SchemeVal m)
         select SIntKey v = SchemeVal . HMap.singleton @RealKey <$> (toReal @_ @(BooOf m) @(StrOf m) v >>= f)
         select SRealKey v = SchemeVal . HMap.singleton @RealKey <$> f v

instance (IsSchemeValue m) => RealDomain (SchemeVal m) (SchemeVal m) (SchemeVal m) where
   toInt = mjoins . HMap.mapList select . getSchemeVal
      where select :: forall (kt :: SchemeKey) schemeM . AbstractM schemeM => Sing kt -> Assoc kt (Values m) -> schemeM (SchemeVal m)
            select SIntKey  v = return $ SchemeVal $ HMap.singleton @IntKey v
            select SRealKey v = SchemeVal . HMap.singleton @IntKey <$> toInt @_ @(BooOf m) v
            select _ _        = escape WrongType
   ceiling = coerce1R' (ceiling @_ @(BooOf m) @(IntOf m))
   floor   = coerce1R' (floor @_ @(BooOf m) @(IntOf m))
   round   = coerce1R' (round @_ @(BooOf m) @(IntOf m))
   log     = coerce1R' (log @_ @(BooOf m) @(IntOf m))
   sin     = coerce1R' (sin @_ @(BooOf m) @(IntOf m))
   asin    = coerce1R' (asin @_ @(BooOf m) @(IntOf m))
   cos     = coerce1R' (cos @_ @(BooOf m) @(IntOf m))
   acos    = coerce1R' (acos @_ @(BooOf m) @(IntOf m))
   tan     = coerce1R' (tan @_ @(BooOf m) @(IntOf m))
   atan    = coerce1R' (atan @_ @(BooOf m) @(IntOf m))
   sqrt    = coerce1R' (sqrt @_ @(BooOf m) @(IntOf m))


------------------------------------------------------------
-- SchemeDomain
------------------------------------------------------------

instance (IsSchemeValue m) => SchemeDomain (SchemeVal m) where
   type Adr  (SchemeVal m) = Assoc AdrConf m
   type Env  (SchemeVal m) = Assoc EnvConf m
   type Exp  (SchemeVal m) = Assoc ExpConf m

   -- Pointer injection
   pptr = SchemeVal . HMap.singleton @PaiKey . PointerSet . Set.singleton
   vptr = SchemeVal . HMap.singleton @VecKey . PointerSet . Set.singleton
   sptr = SchemeVal . HMap.singleton @StrKey . PointerSet . Set.singleton

   -- Pointer extraction
   pptrs = mjoins . HMap.mapList select . getSchemeVal
      where select :: forall (kt :: SchemeKey) schemeM . AbstractM schemeM => Sing kt -> Assoc kt (Values m) -> schemeM (Set (Assoc AdrConf m))
            select SPaiKey p = return (getPointerSet p)
            select _ _ = escape WrongType
   vptrs = mjoins . HMap.mapList select . getSchemeVal
      where select :: forall (kt :: SchemeKey) schemeM . AbstractM schemeM => Sing kt -> Assoc kt (Values m) -> schemeM (Set (Assoc AdrConf m))
            select SVecKey p = return (getPointerSet p)
            select _ _ = escape WrongType
   sptrs = mjoins . HMap.mapList select . getSchemeVal
      where select :: forall (kt :: SchemeKey) schemeM . AbstractM schemeM => Sing kt -> Assoc kt (Values m) -> schemeM (Set (Assoc AdrConf m))
            select SStrKey p = return (getPointerSet p)
            select _ _ = escape WrongType


   -- Closures
   injectClo = SchemeVal . HMap.singleton @CloKey . Set.singleton
   clos = fromMaybe Set.empty . HMap.get @CloKey . getSchemeVal

   -- Null
   nil = SchemeVal $ HMap.singleton @NilKey ()

   -- Symbols
   symbol  = SchemeVal . HMap.singleton @SymKey . CSet . Set.singleton
   symbols = maybe Set.empty CSet.getSet . HMap.get @SymKey . getSchemeVal

   -- Unspecified
   unsp = SchemeVal $ HMap.singleton @UnspKey ()

   -- Primitives
   prim = SchemeVal . HMap.singleton @PrimKey . CSet . Set.singleton
   prims = maybe Set.empty CSet.getSet . HMap.get @PrimKey . getSchemeVal

   -- | Extracting procedures
   withProc :: forall schemeM a . (AbstractM schemeM, Lattice a) => (Either String (Exp (SchemeVal m), Env (SchemeVal m)) -> schemeM a) -> SchemeVal m ->  schemeM a
   withProc f = mjoins . HMap.mapList select . getSchemeVal
      where select :: forall (kt :: SchemeKey) . Sing kt -> Assoc kt (Values m) -> schemeM a
            select SCloKey clos' = Set.foldr (mjoin . f . Right) mbottom clos'
            select SPrimKey prs = Set.foldr (mjoin . f . Left) mbottom (CSet.getSet prs)
            select _ _ = escape WrongType

   -- Predicates
   isInteger = hasType IntKey
   isReal  v = Domain.Core.or (hasType RealKey v) (hasType IntKey v)
   isChar    = hasType CharKey
   isPaiPtr  = hasType PaiKey
   isVecPtr  = hasType VecKey
   isStrPtr  = hasType StrKey
   isClo     = hasType CloKey
   isBool    = hasType BoolKey
   isUnsp    = hasType UnspKey
   isNil     = hasType NilKey
   isPrim    = hasType PrimKey
   isSymbol  = hasType SymKey

------------------------------------------------------------
-- Original implementation
------------------------------------------------------------


-- A generic instance for the Scheme domain, parametrized by their sublattices
type ModularSchemeValue r i c b adr exp env = SchemeVal '[
      RealConf ::-> r,
      IntConf  ::-> i,
      CharConf ::-> c,
      BoolConf ::-> b,
      EnvConf  ::-> env,
      ExpConf  ::-> exp,
      AdrConf  ::-> adr
   ]

------------------------------------------------------------
-- String domain specific to ModularSchemeValue
------------------------------------------------------------

type IsSchemeString s m = StringDomain s (Assoc BoolKey (Values m)) (Assoc IntKey (Values m)) (Assoc CharKey (Values m))


newtype SchemeString s = SchemeString { sconst :: s } 
   deriving (Show, Eq, Ord, Generic, NFData, TopLattice)

instance (Joinable s) => Joinable (SchemeString s) where
   join a b = SchemeString (join (sconst a) (sconst b))

instance (BottomLattice s) => BottomLattice (SchemeString s) where
   bottom = SchemeString bottom
instance (Domain s String) => Domain (SchemeString s) String where
   inject = SchemeString . inject
instance Ord a => Trace a (SchemeString s) where
   trace = const Set.empty
instance (IsSchemeValue m, IsSchemeString s m) => StringDomain (SchemeString s) (SchemeVal m) (SchemeVal m) (SchemeVal m) where
   length = (length @_ @(Assoc BoolKey (Values m)) @(Assoc IntKey (Values m)) @(Assoc CharKey (Values m)) . sconst) >=> (return . SchemeVal . HMap.singleton @IntKey)
   append s1 s2 = SchemeString <$> append @_ @(Assoc BoolKey (Values m)) @(Assoc IntKey (Values m)) @(Assoc CharKey (Values m)) (sconst s1) (sconst s2)
   ref s i = SchemeVal . HMap.singleton @CharKey <$> (ref @_ @(Assoc BoolKey (Values m)) @_ @_ (sconst s) =<< integers i)
   stringLt s1 s2  = SchemeVal . HMap.singleton @BoolKey <$> stringLt @_ @_ @(Assoc IntKey (Values m)) @(Assoc CharKey (Values m)) (sconst s1) (sconst s2)
   toNumber  = (toNumber @_ @(Assoc BoolKey (Values m)) @_ @(Assoc CharKey (Values m)) . sconst) >=> (return . SchemeVal . HMap.singleton @IntKey)
   topString = SchemeString (topString @_ @(Assoc BoolKey (Values m)) @(Assoc IntKey (Values m)) @(Assoc CharKey (Values m)))
   -- TODO
   -- set s i c = SchemeString <$> set @_ @(Assoc BoolKey (Values m)) @_ @(Assoc CharKey (Values m)) (sconst s) i c
   -- makeString i c = SchemeString <$> makeString @_ @(Assoc BoolKey (Values m)) @_ @(Assoc CharKey (Values m)) i c
instance (StringDomain s (CP Bool) (CP Integer) (CP Char)) => StringDomain (SchemeString s) (CP Bool) (CP Integer) (CP Char) where
   length = length @_ @(CP Bool) @_ @(CP Char) . sconst 
   append (SchemeString s1) (SchemeString s2) = SchemeString <$> append @_ @(CP Bool) @(CP Integer) @(CP Char) s1 s2 
   ref (SchemeString s) = ref @_ @(CP Bool) @(CP Integer) s 
   stringLt (SchemeString s1) (SchemeString s2) = stringLt @_ @_ @(CP Integer) @(CP Char) s1 s2
   toNumber = toNumber @_ @(CP Bool) @_ @(CP Char) . sconst 
   topString = SchemeString (topString @_ @(CP Bool) @(CP Integer) @(CP Char))
   set s i c = SchemeString <$> set @_ @(CP Bool) @_ @(CP Char) (sconst s) i c
   makeString i c = SchemeString <$> makeString @_ @(CP Bool) @_ @(CP Char) i c


------------------------------------------------------------
-- Scheme values contain addresses (with contexts)
------------------------------------------------------------


-- | Recursively replace contexts inside Scheme values
instance (IsSchemeValue m,
          Ord (Assoc ExpConf m),
          Ord (Assoc EnvConf m),
          Ord (Assoc PidConf m),
          AddressWithCtx ctx (Assoc PidConf m),
          AddressWithCtx ctx (Assoc AdrConf m),
          AddressWithCtx ctx (Assoc EnvConf m)) => AddressWithCtx ctx (SchemeVal m) where

   replaceCtx ctx' = joins . HMap.mapList select . getSchemeVal
       where select :: forall (kt :: SchemeKey) . Sing kt -> Assoc kt (Values m) -> SchemeVal m
             select SPaiKey ptrs = SchemeVal $ HMap.singleton @PaiKey $ removePtrsCtx ptrs
             select SVecKey ptrs = SchemeVal $ HMap.singleton @VecKey $ removePtrsCtx ptrs
             select SStrKey ptrs = SchemeVal $ HMap.singleton @StrKey $ removePtrsCtx ptrs
             select SCloKey clss = SchemeVal $ HMap.singleton @CloKey $ Set.map (second (replaceCtx ctx')) clss
             select SPidKey pids = SchemeVal $ HMap.singleton @PidKey $ Set.map (replaceCtx ctx') pids
             select k v = SchemeVal $ HMap.singletonWithSing k v
             removePtrsCtx :: PointerSet (Assoc AdrConf m) -> PointerSet (Assoc AdrConf m)
             removePtrsCtx = PointerSet . Set.map (replaceCtx ctx') . getPointerSet

------------------------------------------------------------
-- Subdomain extraction
------------------------------------------------------------

integers :: forall m schemeM . (IsSchemeValue m, AbstractM schemeM) => SchemeVal m -> schemeM (Assoc IntKey (Values m))
integers = mjoins . HMap.mapList select . getSchemeVal
      where select :: forall (kt :: SchemeKey) . Sing kt ->  Assoc kt (Values m) -> schemeM (IntOf m)
            select SIntKey v = return  v
            select _ _ = escape WrongType

------------------------------------------------------------
-- Insertion functions
------------------------------------------------------------

insertInt :: (Assoc IntKey (Values m) ~ i) => i -> SchemeVal m
insertInt = SchemeVal . HMap.singleton @IntKey

insertChar :: (Assoc CharKey (Values m) ~ c) =>  c -> SchemeVal m
insertChar = SchemeVal . HMap.singleton @CharKey

insertBool :: (Assoc BoolKey (Values m) ~ b) => b -> SchemeVal m
insertBool = SchemeVal . HMap.singleton @BoolKey

