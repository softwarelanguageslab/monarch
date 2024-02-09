{-# OPTIONS_GHC -Wno-missing-export-lists #-}
{-# OPTIONS_GHC -Wno-orphans #-}

module Domain.Core.NumberDomain.ConstantPropagation where

import Lattice 
import Domain.Core.NumberDomain.Class 
import Domain.Core.BoolDomain.ConstantPropagation () -- for CP Bool instance

import Control.Applicative
import Control.Monad.DomainError
import Control.Monad.Join 
import Control.Monad.AbstractM

------------------------------------------------------------
--- Integers
------------------------------------------------------------

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
   eq a b = return $ liftA2 (==) a b

instance IntDomain (CP Integer) where
   type Str (CP Integer) = CP String
   type Rea (CP Integer) = CP Double
   toReal   = return . fmap fromIntegral
   toString = return . fmap show
   quotient a b = return $ liftA2 Prelude.div a b
   remainder a b =  return $ liftA2 rem a b
   modulo a b = return $ liftA2 mod a b


------------------------------------------------------------
--- Reals
------------------------------------------------------------

between :: Ord a => a -> a -> a -> Bool
between a b c = a <= c && c <= b

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
   eq a b = return $ liftA2 (==) a b

instance RealDomain (CP Double) where
   type IntR (CP Double) = CP Integer
   toInt = return . fmap truncate
   ceiling = return . fmap (fromIntegral . Prelude.ceiling)
   floor = return . fmap (fromIntegral . Prelude.floor)
   round = return . fmap (fromIntegral . Prelude.round)
   log a =
      domain (fmap (<= 0) a) InvalidArgument <||> return (fmap Prelude.log a)
   sin = return . fmap Prelude.sin
   asin a =
      domain (fmap (between (-1) 1) a) InvalidArgument <||>
      return (fmap Prelude.asin a)
   cos  = return . fmap Prelude.cos
   acos a =
      domain (fmap (between (-1) 1) a) InvalidArgument <||>
      return (fmap Prelude.acos a)
   tan = return . fmap Prelude.tan
   atan = return . fmap Prelude.atan
   sqrt a =
      domain (fmap (< 0) a) InvalidArgument <||>
      return (fmap Prelude.sqrt a)