{-# LANGUAGE FlexibleContexts, UndecidableInstances, PatternSynonyms, FlexibleInstances, ConstraintKinds, PolyKinds, StandaloneKindSignatures, DataKinds #-}

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
import Data.Maybe (isJust)
import GHC.Generics
import Control.Applicative (Applicative(liftA2))
import Data.Set (Set)
import Data.Default
import qualified Data.Set as Set
import Control.Monad ((>=>), (<=<))
import qualified Control.Monad as M

import Data.Kind
import Data.Singletons

import Lattice.HMapLattice
import Data.TypeLevel.HMap ((::->), HMap, withC_, KeyIs, KeyIs1, ForAll, AtKey1, KeyKind, Assoc, genHKeys, All, ForAllOf, Dict(..), HMapKey, (:->), Const, Keys, MapWith, MapWithAt)
import qualified Data.TypeLevel.HMap as HMap

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
                   | ExpConf    -- ^ concrete type of expressions
                   | StrConf    -- ^ type of string pointers
                   | PaiConf    -- ^ type of pair pointers
                   | VecConf    -- ^ type of vector pointers

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
   CloKey  ::-> Set (Assoc EnvConf m, Assoc ExpConf m),
   PrimKey ::-> Set String
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
    KeyIs1 RealDomain (Values m) RealKey,
    KeyIs1 BoolDomain (Values m) BoolKey,
    KeyIs1 IntDomain  (Values m)  IntKey,
    KeyIs1 CharDomain (Values m) CharKey)

-- Eq instance
deriving instance (HMapKey (Values m), ForAll SchemeKey (AtKey1 Eq (Values m))) => Eq (SchemeVal m)

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
      where t = if isTrue  v then inject True else bottom
            f = if isFalse v then inject False else bottom

------------------------------------------------------------
-- CharDomain
------------------------------------------------------------

------------------------------------------------------------
-- SchemeDomain
------------------------------------------------------------


-- A generic instance for the Scheme domain, parametrized by their sublattices
data ModularSchemeValue r i c b pai vec str var exp env = ModularSchemeValue {
   real    :: Maybe r,
   integer :: Maybe i,
   character :: Maybe c ,
   boolean :: Maybe b,
   paiPtr :: Maybe (Set pai) ,
   vecPtr :: Maybe (Set vec) ,
   strPtr :: Maybe (Set str),
   clo :: Maybe (Set (exp, env)),
   null :: Maybe (),
   unspecified :: Maybe (),
   primitives :: Maybe (Set String)
} deriving (Ord, Eq, Generic)

instance (SplitLattice (ModularSchemeValue r i c b pai vec str var exp env), Show r, Show i, Show c, Show b, Show exp) => Show (ModularSchemeValue r i c b pai vec str var exp env) where
   show = intercalate "," . Set.toList . Set.map select . split
      where select ModularSchemeValue { real = Just r } = "real ↦ "++ show r
            select ModularSchemeValue  { integer = Just i } = "integer ↦ " ++ show i
            select ModularSchemeValue { character = Just c } = "character ↦ " ++ show c
            select ModularSchemeValue { boolean = Just b } = "boolean ↦ " ++ show b
            select ModularSchemeValue { paiPtr = Just _ } = "<pair>"
            select ModularSchemeValue { vecPtr = Just _ } = "<vector>"
            select ModularSchemeValue { strPtr = Just _ } = "<string>"
            select ModularSchemeValue { clo = Just clos } =
               "{" ++ intercalate "," (Set.toList (Set.map (\(e, _) -> "<clo: " ++ show e ++ ">") clos)) ++ "}"
            select ModularSchemeValue { null = Just _ } = "'()"
            select ModularSchemeValue { unspecified = Just _ } = "<unspecified>"
            select ModularSchemeValue { primitives = Just prms } =
               "primitive ↦ {" ++ intercalate "," (Set.toList (Set.map show prms)) ++ "}"
            select _ = "⊥"

instance Default (ModularSchemeValue r i c b pai vec str var exp env) where
   def = ModularSchemeValue Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing Nothing

-- Injection of simple literal values
instance (Domain i Integer, JoinLattice (ModularSchemeValue r i c b pai vec str var exp env)) => Domain (ModularSchemeValue r i c b pai vec str var exp env) Integer where
   inject i = def { integer = Just $ inject i }
instance (Domain c Char, JoinLattice (ModularSchemeValue r i c b pai vec str var exp env)) => Domain (ModularSchemeValue r i c b pai vec str var exp env) Char where
   inject c = def { character = Just $ inject c }
instance (Domain b Bool, JoinLattice (ModularSchemeValue r i c b pai vec str var exp env)) => Domain (ModularSchemeValue r i c b pai vec str var exp env) Bool where
   inject b = def { boolean = Just $ inject b }
instance (Domain r Double, JoinLattice (ModularSchemeValue r i c b pai vec str var exp env)) => Domain (ModularSchemeValue r i c b pai vec str var exp env) Double where
   inject r = def { real = Just $ inject r }

-- Instance for lattice operations

instance (RealDomain r, IntDomain i, CharDomain c, BoolDomain b, Address pai, Address vec, Address str, Ord env, Ord exp) => Joinable (ModularSchemeValue r i c b pai vec str var exp env) where
   -- pairwise join
   join a b = ModularSchemeValue {
      real = join (real a) (real b),
      integer = join (integer a) (integer b),
      character = join (character a) (character b),
      boolean = join (boolean a) (boolean b),
      paiPtr = join (paiPtr a) (paiPtr b),
      vecPtr = join (vecPtr a) (vecPtr b),
      strPtr = join (strPtr a) (strPtr b),
      clo = join (clo a) (clo b),
      null = join (null a) (null b),
      unspecified = join (unspecified a) (unspecified b),
      primitives = join (primitives a) (primitives b)
   }

instance (RealDomain r, IntDomain i, CharDomain c, BoolDomain b, Address pai, Address vec, Address str, Show env, Ord env, Ord exp) =>
   JoinLattice (ModularSchemeValue r i c b pai vec str var exp env) where
   -- bottom is when all fields of the modular value are nothing
   bottom = def


   -- pairwise subsumption
   subsumes a b =
      subsumes (real a) (real b) &&
      subsumes (integer a) (integer b) &&
      subsumes (character a) (character b) &&
      subsumes (boolean a) (boolean b) &&
      subsumes (paiPtr a) (paiPtr b) &&
      subsumes (vecPtr a) (vecPtr b) &&
      subsumes (strPtr a) (strPtr b) &&
      subsumes (clo a) (clo b) &&
      subsumes (null a) (null b) &&
      subsumes (unspecified a) (unspecified b) &&
      subsumes (primitives a) (primitives b)

--

instance (Ord exp, Ord i, Ord b, Ord c, Ord r, RealDomain r, IntDomain i, CharDomain c, BoolDomain b, Address pai, Address vec, Address str, Ord env) =>
   SplitLattice (ModularSchemeValue r i c b pai vec str var exp env) where

   split v =
       Set.map (\a -> def { real = Just a }) (maybeSingle (real v)) ∪
       Set.map (\a -> def { integer = Just a }) (maybeSingle (integer v)) ∪
       Set.map (\a -> def { character = Just a }) (maybeSingle (character v)) ∪
       Set.map (\a -> def { boolean = Just a }) (maybeSingle (boolean v)) ∪
       Set.map (\a -> def { paiPtr = Just a }) (maybeSingle (paiPtr v)) ∪
       Set.map (\a -> def { vecPtr = Just a }) (maybeSingle (vecPtr v)) ∪
       Set.map (\a -> def { strPtr = Just a }) (maybeSingle (strPtr v)) ∪
       Set.map (\a -> def { clo = Just a }) (maybeSingle (clo v)) ∪
       Set.map (\a -> def { null = Just a }) (maybeSingle (null v)) ∪
       Set.map (\a -> def { unspecified = Just a }) (maybeSingle (unspecified v)) ∪
       Set.map (\a -> def { primitives = Just a }) (maybeSingle (primitives v))

---

instance (Ord exp, Ord i, Ord b, Ord c, Ord r, RealDomain r, IntDomain i, CharDomain c, BoolDomain b, Address pai, Address vec, Address str, Show env, Ord env) =>
   BoolDomain (ModularSchemeValue r i c b pai vec str var exp env) where

   isTrue v = any trueish (split v)
      where trueish ModularSchemeValue { boolean = Just boolean } = isTrue boolean
            trueish ModularSchemeValue {} = True -- anything else is true
   -- only `#f` is false
   isFalse v = any falsish (split v)
      where falsish ModularSchemeValue { boolean = Just boolean } = isFalse boolean
            falsish ModularSchemeValue {} = False
   boolTop = def { boolean = Just boolTop }
   not v = join t f
      where t = if isTrue  v then inject True else bottom
            f = if isFalse v then inject False else bottom

-- 

chars :: (Ord exp, Ord i, Ord b, Ord c, Ord r, RealDomain r, IntDomain i, CharDomain c, BoolDomain b, Address pai, Address vec, Address str, Ord env, AbstractM m) => ModularSchemeValue r i c b pai vec str var exp env -> m c
chars = foldr (mjoin . select) mzero . split
   where select ModularSchemeValue { character = Just c } = return c
         select ModularSchemeValue { } = escape WrongType


instance (Ord exp, Ord i, Ord b, Ord c, Ord r, RealDomain r, IntDomain i, CharDomain c, IntC c ~ i, BoolDomain b, Address pai, Address vec, Address str, Show env, Ord env) =>
   CharDomain (ModularSchemeValue r i c b pai vec str var exp env) where

   type IntC (ModularSchemeValue r i c b pai vec str var exp env) = (ModularSchemeValue r i c b pai vec str var exp env)

   downcase = chars >=> downcase >=> (\c -> return $ def {character = Just c})
   upcase = chars >=> upcase >=>  (\c -> return $ def { character = Just c })
   charToInt = chars >=> charToInt >=> (\i -> return $ def { integer = Just i })
   isLower = chars >=> isLower
   isUpper = chars >=> isUpper
   charEq a b = M.join $ liftA2 charEq (chars a) (chars b)
   charLt a b = M.join $ liftA2 charLt (chars a) (chars b)
   charEqCI a b = M.join $ liftA2 charEqCI (chars a) (chars b)
   charLtCI a b = M.join $ liftA2 charLtCI (chars a) (chars b)

--

insertInt  v = def { integer = Just v }
insertReal v = def { real    = Just v }
insertBool b = def { boolean = Just b }
insertChar c = def { character = Just c }

-- | Matches if the value is at least an integer
pattern IsInteger i = ModularSchemeValue { integer = Just i }
-- | Matches if the value is at least a real number 
pattern IsReal    r = ModularSchemeValue { real    = Just r }

-- TODO: `mjoin` might not keep the structure introduced by `split`, hence, `mjoin` should not be used here!
-- | Exhaustivily extract all number-like values from the abstract Scheme value
number :: (Ord exp, Ord i, Ord r, Ord c, Ord b, RealDomain r, IntDomain i, CharDomain c, BoolDomain b, Address pai, Address vec, Address str, Ord env, Show env, AbstractM m) =>
   ModularSchemeValue r i c b pai vec str var exp env -> m (ModularSchemeValue r i c b pai vec str var exp env)
number = foldr (mjoin . select) mzero . split
   where select (IsInteger i) = return $ def { integer = Just i }
         select (IsReal r) = return $ def { real    = Just r }
         select _ = escape WrongType


integers :: (Ord exp, Ord i, Ord b, Ord c, Ord r, RealDomain r, IntDomain i, CharDomain c, BoolDomain b, Address pai, Address vec, Address str, Ord env, AbstractM m) =>
  ModularSchemeValue r i c b pai vec str var exp env -> m i
integers = foldr (mjoin . select) mzero . split
   where select (IsInteger i) = return i
         select _ = escape WrongType

reals :: (Ord exp, Ord i, Ord b, Ord c, Ord r, RealDomain r, IntDomain i, CharDomain c, BoolDomain b, Address pai, Address vec, Address str, Ord env, AbstractM m) =>
  ModularSchemeValue r i c b pai vec str var exp env -> m r
reals = foldr (mjoin . select) mzero . split
   where select (IsReal r) =  return r
         select _ = escape WrongType

-- coerce :: (i -> i -> m a) -> (r -> r -> m a) -> (v -> v -> m a)
--coerce :: AbstractM m => (i -> i -> m a) -> (r -> r -> m a) -> (v -> v -> m a)
coerce intOp realOp v1 v2 = M.join $ liftA2 apply (number v1) (number v2)
   where apply (IsInteger i1) (IsInteger i2) = intOp i1 i2
         apply (IsReal    r1) (IsReal    r2) = realOp r1 r2
         apply (IsReal    r1) (IsInteger i2) = realOp r1 =<< toReal i2
         apply (IsInteger i1) (IsReal    r2) = flip realOp r2 =<< toReal i1

coerc1R realOp = apply <=< number
   where apply (IsInteger l1) = realOp =<< toReal l1
         apply (IsReal    r1) = realOp r1

coerc1 intOp realOp = apply <=< number
   where apply (IsInteger i) = intOp  i
         apply (IsReal    r) = realOp r

instance (Ord exp, Ord i, Ord r, Ord b, Ord c, RealDomain r, IntDomain i, CharDomain c, BoolDomain b, Address pai, Address vec, Address str, Show env, Ord env, Rea i ~ r, Boo r ~ b, Boo i ~ b) =>
   NumberDomain (ModularSchemeValue r i c b pai vec str var exp env) where

   type Boo (ModularSchemeValue r i c b pai vec str var exp env) = ModularSchemeValue r i c b pai vec str var exp env

   isZero = coerc1 (fmap insertBool . isZero)
                   (fmap insertBool . isZero)
   random = coerc1 (fmap insertInt . random) (fmap insertReal . random)
   plus   = coerce (\v1 v2 -> insertInt <$> plus v1 v2)
                   (\v1 v2 -> insertReal <$> plus v1 v2)
   minus  = coerce (\v1 v2 -> insertInt <$> minus v1 v2)
                   (\v1 v2 -> insertReal <$> minus v1 v2)
   times  = coerce (\v1 v2 -> insertInt <$> times v1 v2)
                   (\v1 v2 -> insertReal <$> times v1 v2)
   div    = coerce (\v1 v2 -> insertInt <$> div v1 v2)
                   (\v1 v2 -> insertReal <$> div v1 v2)
   expt   = coerce (\v1 v2 -> insertInt <$> expt v1 v2)
                   (\v1 v2 -> insertReal <$> expt v1 v2)
   lt     = coerce (\v1 v2 -> insertBool <$> lt v1 v2)
                   (\v1 v2 -> insertBool <$> lt v1 v2)
   equals = coerce (\v1 v2 -> insertBool <$> equals v1 v2)
                   (\v1 v2 -> insertBool <$> equals v1 v2)

instance (Ord exp, Ord i, Ord r, Ord b, Ord c, RealDomain r, IntDomain i, CharDomain c, BoolDomain b, Address pai, Address vec, Address str, Show env, Ord env, Rea i ~ r, Boo r ~ b, Boo i ~ b, IntR r  ~ i) =>
   RealDomain (ModularSchemeValue r i c b pai vec str var exp env) where

   type IntR (ModularSchemeValue r i c b pai vec str var exp env) = (ModularSchemeValue r i c b pai vec str var exp env)

   toInt   = (reals >=> toInt) >=> (return . insertInt)
   ceiling = coerc1R $ fmap insertReal . ceiling
   floor   = coerc1R $ fmap insertReal . floor
   round   = coerc1R $ fmap insertReal . round
   log     = coerc1R $ fmap insertReal . log
   sin     = coerc1R $ fmap insertReal . sin
   asin    = coerc1R $ fmap insertReal . asin
   cos     = coerc1R $ fmap insertReal . cos
   acos    = coerc1R $ fmap insertReal . acos
   tan     = coerc1R $ fmap insertReal . tan
   atan    = coerc1R $ fmap insertReal . atan
   sqrt    = coerc1R $ fmap insertReal . sqrt

instance (Ord exp, Ord i, Ord c, Ord r, Ord b, RealDomain r, IntDomain i, CharDomain c, BoolDomain b, Address pai, Address vec, Address str, Show env, Ord env, Rea i ~ r, Boo r ~ b, Boo i ~ b) =>
   IntDomain (ModularSchemeValue r i c b pai vec str var exp env) where

   -- TODO: type Str (ModularSchemeValue r i c b pai vec str var exp env) = Vlu str
   type Rea (ModularSchemeValue r i c b pai vec str var exp env) = (ModularSchemeValue r i c b pai vec str var exp env)
   toReal    = integers >=> toReal >=> (return . insertReal)
   -- TODO: toString  = integers >=> toString >=> (return . Coerce.coerce)
   quotient  a b = insertInt <$> M.join (liftA2 quotient (integers a) (integers b))
   modulo    a b = insertInt <$> M.join (liftA2 modulo (integers a) (integers b))
   remainder a b = insertInt <$> M.join (liftA2 remainder (integers a) (integers b))

-- 

newtype SchemeString s v = SchemeString { sconst :: s } deriving (Show, Eq, Ord)

instance (Joinable s) => Joinable (SchemeString s v) where
   join a b = SchemeString (join (sconst a) (sconst b))

instance (SchemeDomain v, StringDomain s) => JoinLattice (SchemeString s v) where
   subsumes a b = subsumes (sconst a) (sconst b)
   bottom = SchemeString bottom
instance (SchemeDomain v, StringDomain s) => Domain (SchemeString s v) String where
   inject = SchemeString . inject
instance (
   Ord exp, Ord i, Ord c, Ord b, Ord r,
   StringDomain s, IntS s ~ i, ChaS s ~ c, BooS s ~ b,
   IntDomain i, CharDomain c, BoolDomain b, Ord env, Address pai, Address vec, Address str,
   RealDomain r, SchemeDomain (ModularSchemeValue r i c b pai vec str var exp env)
 ) => StringDomain (SchemeString s (ModularSchemeValue r i c b pai vec str var exp env)) where
   type IntS (SchemeString s (ModularSchemeValue r i c b pai vec str var exp env)) = (ModularSchemeValue r i c b pai vec str var exp env)
   type ChaS (SchemeString s (ModularSchemeValue r i c b pai vec str var exp env)) = (ModularSchemeValue r i c b pai vec str var exp env)
   type BooS (SchemeString s (ModularSchemeValue r i c b pai vec str var exp env)) = (ModularSchemeValue r i c b pai vec str var exp  env)
   length = (length . sconst) >=> (return . insertInt)
   append s1 s2 = SchemeString <$> append (sconst s1) (sconst s2)
   ref s i = insertChar <$> (ref (sconst s) =<< integers i)
   stringLt s1 s2  = insertBool <$> stringLt (sconst s1) (sconst s2)
   toNumber = (toNumber . sconst) >=> (return . insertInt)

--

instance
  ( Ord exp,
    Ord r, Ord i, Ord b, Ord c,
    RealDomain r,
    IntDomain  i,
    CharDomain c,
    BoolDomain b,
    IntC c ~ i,
    Rea  i ~ r,
    Boo  i ~ b,
    Boo  r ~ b,
    IntR r ~ i,
    Address vec,
    Address str,
    Address pai,
    Address var,
    Show env, Ord env
  ) => SchemeDomain (ModularSchemeValue r i c b pai vec str var exp env)
  where

  type Adr  (ModularSchemeValue r i c b pai vec str var exp env)  = var
  type PAdr (ModularSchemeValue r i c b pai vec str var exp env)  = pai
  type VAdr (ModularSchemeValue r i c b pai vec str var exp env)  = vec
  type SAdr (ModularSchemeValue r i c b pai vec str var exp env)  = str
  type Env  (ModularSchemeValue r i c b pai vec str var exp env)  = env
  type Exp  (ModularSchemeValue r i c b pai vec str var exp env)  = exp

  -- Pointer injection
  pptr p = def { paiPtr = Just $ Set.singleton p }
  vptr p = def { vecPtr = Just $ Set.singleton p }
  sptr p = def { strPtr = Just $ Set.singleton p }

  -- Pointer extraction 
  pptrs = Set.foldr (mjoin . select) mzero . split
   where select ModularSchemeValue { paiPtr = Just ptr } = return ptr
         select _ = escape WrongType

  sptrs = Set.foldr (mjoin . select) mzero . split
   where select ModularSchemeValue { strPtr = Just ptr } = return ptr
         select _ = escape WrongType

  vptrs = Set.foldr (mjoin . select) mzero . split
   where select ModularSchemeValue { vecPtr = Just ptr } = return ptr
         select _ = escape WrongType

  -- Closures
  injectClo c = def { clo = Just $ Set.singleton c }
  clos = foldl Set.union Set.empty . Set.map select . split
   where select ModularSchemeValue { clo = Just clo } = clo
         select _ = Set.empty

  -- | Null
  nil = def { null = Just () }

  -- | Unspecified
  unsp = def { unspecified = Just () }

  -- | Primitives
  prim  s = def { primitives = Just (Set.singleton s) }
  prims =   Set.unions . Set.map select . split
   where select ModularSchemeValue { primitives = Just primitives } = primitives
         select _ = Set.empty

  -- | Extracting procedures
  withProc f = foldr (mjoin . select) mzero . split
   where select ModularSchemeValue { clo = Just closures } = foldr (mjoin . f . Right) mzero closures
         select ModularSchemeValue { primitives = Just prms } = foldr (mjoin . f . Left) mzero prms
         select _ = escape WrongType

  -- | Differentiate between values
  isInteger = isJust . integer
  isReal    = isJust . real
  isChar    = isJust . character
  isPaiPtr  = isJust . paiPtr
  isVecPtr  = isJust . vecPtr
  isStrPtr  = isJust . strPtr
  isClo     = isJust . clo
  isBool    = isJust . boolean
  isUnsp    = isJust . unspecified
  isNil     = isJust . null
  isPrim    = isJust . primitives


-- | Generate a top value, since the set of closures
-- string pointers, pair pointers and vector pointers
-- cannot be known by the domain itself, it has to be 
-- passed to explicitly.
schemeTop :: (TopLattice r,
              TopLattice i,
              TopLattice c,
              TopLattice b)
          => Set pai
          -> Set vec
          -> Set str
          -> Set (exp, env)
          -> Set String
          -> ModularSchemeValue r i c b pai vec str var exp env
schemeTop pai vec str closures primitives =
   ModularSchemeValue {
      real      = Just top,
      integer   = Just top,
      character = Just top,
      boolean   = Just top,
      paiPtr    = Just pai,
      vecPtr    = Just vec,
      strPtr    = Just str,
      clo       = Just closures,
      null      = Just (),
      unspecified = Just (),
      primitives  = Just primitives
   }
