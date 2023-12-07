{-# LANGUAGE FlexibleInstances #-}
{-# OPTIONS_GHC -Wno-missing-methods #-}
{-# OPTIONS_GHC -Wno-redundant-constraints #-}

module Domain.ConstantPropagation(CP(..)) where

import Domain
import Domain.Dictionary hiding (Bottom)
import Control.Monad.Join
import Control.Applicative (Applicative(liftA2))
import Data.Char hiding (isLower, isUpper)
import qualified Data.Char as Char
import Data.Maybe
import qualified Data.Map as Map
import qualified Data.Set as Set
import GHC.Generics

replaceAt :: [a] -> Integer -> a -> [a]
replaceAt (_:xs) 0 c = c : xs
replaceAt (x:xs) n c = x : replaceAt xs (n-1) c
replaceAt [] _ _ = []

data CP a = Bottom | Constant a | Top
    deriving (Eq, Ord, Show, Generic)

instance Ord a => Joinable (CP a) where
    join Bottom v = v
    join v Bottom = v
    join v@(Constant x1) (Constant x2)
      | x1 == x2 = v
    join _ _ = Top

instance (Show a, Ord a) => JoinLattice (CP a) where
    bottom = Bottom


    subsumes Top _ = True
    subsumes _ Bottom = True
    subsumes (Constant x1) (Constant x2) = x1 == x2
    subsumes _ _ = False

instance (Show a, Ord a) => Domain (CP a) a where
   inject = Constant

instance Functor CP where
    fmap _ Bottom = Bottom
    fmap f (Constant x) = Constant (f x)
    fmap _ Top = Top

instance Applicative CP where
    pure = Constant
    Bottom <*> _ = Bottom
    _ <*> Bottom = Bottom
    (Constant f) <*> (Constant a) = Constant (f a)
    _ <*> _ = Top

instance NumberDomain (CP Integer) where
   type Boo (CP Integer) = CP Bool
   isZero = return . liftA2 (==) (Constant 0)
   random = return . const Top
   plus a b = return $ liftA2 (+) a b
   minus a b = return $ liftA2 (-) a b
   times a b = return $ liftA2 (*) a b
   div a b = return $ liftA2 Prelude.div a b
   expt a b = return $ liftA2 (^) a b
   lt a b = return $ liftA2 (<) a b
   equals a b = return $ liftA2 (==) a b

instance NumberDomain (CP Double) where
   type Boo (CP Double) = CP Bool
   isZero = return . liftA2 (==) (Constant 0)
   random = return . const Top
   plus a b = return $ liftA2 (+) a b
   minus a b = return $ liftA2 (-) a b
   times a b = return $ liftA2 (*) a b
   div a b = return $ liftA2 (/) a b
   expt a b = return $ liftA2 (**) a b
   lt a b = return $ liftA2 (<) a b
   equals a b = return $ liftA2 (==) a b

instance StringDomain (CP String) where
   type IntS (CP String) = CP Integer
   type ChaS (CP String) = CP Char
   type BooS (CP String) = CP Bool

   length = return . fmap (fromIntegral . Prelude.length)
   append a b = return $ liftA2 (++) a b
   ref s i =
      domain (liftA2 (>) (fmap fromIntegral i) (fmap Prelude.length s)) "string-ref: index out of range" <||>
      return (liftA2 (!!) s (fmap fromIntegral i))
   set s i c =
      domain (liftA2 (>) (fmap fromIntegral i) (fmap Prelude.length s)) "string-set!: index of range" <||>
      return (replaceAt <$> s <*> i <*> c)
   stringLt s1 s2 = return $ liftA2 (<) s1 s2
   toNumber = return . fmap read
   makeString i c = return $ take <$> fmap fromIntegral i <*> fmap repeat c


-- 

bool :: (BoolDomain b) => CP Bool -> b
bool Top = boolTop
bool Bottom = bottom
bool (Constant b) = inject b

instance CharDomain (CP Char) where
   type IntC (CP Char) = CP Integer
   downcase = return . fmap toLower
   upcase = return . fmap toUpper
   charToInt = return .  fmap (fromIntegral . ord)
   isLower = return . bool . fmap Char.isLower
   isUpper = return . bool . fmap Char.isUpper
   charEq a b = return $ bool $ liftA2 (==) a b
   charLt a b = return $ bool $ liftA2 (<) a b
   charEqCI a b = return $ bool $ liftA2 (==) (toLower <$> a) (toLower <$> b)
   charLtCI a b = return $ bool $ liftA2 (<) (toLower <$> a) (toLower <$> b)

--

instance IntDomain (CP Integer) where
   type Str (CP Integer) = CP String
   type Rea (CP Integer) = CP Double
   toReal   = return . fmap fromIntegral
   toString = return . fmap show
   quotient a b = return $ liftA2 Prelude.div a b
   remainder a b =  return $ liftA2 rem a b
   modulo a b = return $ liftA2 mod a b

-- 

instance BoolDomain (CP Bool) where
   isTrue Top = True
   isTrue Bottom = False
   isTrue (Constant b) = b
   isFalse Top = True
   isFalse Bottom = False
   isFalse (Constant b) = Prelude.not b
   not = fmap Prelude.not
   boolTop = Top

--

between :: Ord a => a -> a -> a -> Bool
between a b c = a <= c && c <= b

instance RealDomain (CP Double) where
   type IntR (CP Double) = CP Integer
   toInt = return . fmap truncate
   ceiling = return . fmap (fromIntegral . Prelude.ceiling)
   floor = return . fmap (fromIntegral . Prelude.floor)
   round = return . fmap (fromIntegral . Prelude.round)
   log a =
      domain (fmap (<= 0) a) "log > 0" <||> return (fmap Prelude.log a)
   sin = return . fmap Prelude.sin
   asin a =
      domain (fmap (between (-1) 1) a) "asin: value must be between -1 and 1" <||>
      return (fmap Prelude.asin a)
   cos  = return . fmap Prelude.cos
   acos a =
      domain (fmap (between (-1) 1) a) "acos: value must be between -1 and 1" <||>
      return (fmap Prelude.acos a)
   tan = return . fmap Prelude.tan
   atan = return . fmap Prelude.atan
   sqrt a =
      domain (fmap (< 0) a) "sqrt: value must be positive" <||>
      return (fmap Prelude.sqrt a)

---

instance (Ord a, JoinLattice v) => Joinable (Dictionary (CP a) v) where
   join d1 d2 =
      let vs = if isJust (Map.lookup Top (values d1)) || isJust (Map.lookup Top (values d2))
                  then Map.fromList [(Top, join (dJoinValues d1) (dJoinValues d2))]
                  else Map.fromList $ Map.toList (values d1) ++ Map.toList (values d2)
      in Dictionary (Set.intersection (keys d1) (keys d2)) vs

--- | An instance of the dictionary where all fields are represented by the constant propagation domain
instance (Show a, JoinLattice v, Eq v, Ord v, Ord a) => DictionaryDomain (Dictionary (CP a) v) where
   type DKey (Dictionary (CP a) v) = CP a
   type DVlu (Dictionary (CP a) v) = v

   lookup _ d
      | d == bottom = bottom
   lookup Top d =
      dJoinValues d
   lookup k@(Constant _) d =
      fromMaybe (fromMaybe bottom $ dLookup k d) (dLookup Top d)
   lookup Bottom _ = bottom

   update _ v d
      | d == bottom || v == bottom = bottom
   update Top v d =
      dict [(Top, join (dJoinValues d) v)] (dKeys d)
   update (Constant k) v d =
      -- Look for the `Top` value, if it is there, we simply 
      -- join its value with the new value. 
      maybe (dUpdate (Constant k) (Constant k) d v)
            (dUpdate Top (Constant k) d  . join v)
            (dLookup Top d)
   update Bottom _ _ = bottom

   isEmpty  = dIsEmpty
   contains = flip dcontains
