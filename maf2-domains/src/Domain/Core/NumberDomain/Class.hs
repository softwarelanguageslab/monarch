{-# LANGUAGE AllowAmbiguousTypes #-}

module Domain.Core.NumberDomain.Class (
   NumberDomain(..), 
   IntDomain(..), 
   RealDomain(..)
) where

import Lattice.Class
import Domain.Class 
import Control.Monad.AbstractM
import qualified Domain.Core.BoolDomain.Class as Bool

import Data.Kind 
import Lattice.BottomLiftedLattice
import Control.Monad.Join (MonadBottom(..))

class (Joinable n, Bool.BoolDomain bln) => NumberDomain n bln where
   isZero :: AbstractM m => n -> m bln
   random :: AbstractM m => n -> m n
   plus :: AbstractM m => n -> n -> m n
   minus :: AbstractM m => n -> n -> m n
   times :: AbstractM m => n -> n -> m n
   div :: AbstractM m => n -> n -> m n
   expt :: AbstractM m => n -> n -> m n
   eq :: AbstractM m => n -> n -> m bln
   ne :: AbstractM m => n -> n -> m bln
   ne a b = Bool.not <$> eq a b 
   lt :: AbstractM m => n -> n -> m bln
   gt :: AbstractM m => n -> n -> m bln
   gt = flip lt 
   ge :: AbstractM m => n -> n -> m bln
   ge a b = Bool.not <$> lt a b 
   le :: AbstractM m => n -> n -> m bln
   le a b = Bool.not <$> gt a b 

class (Domain i Integer, NumberDomain i bln) => IntDomain i bln str rea where
   inc :: AbstractM m => i -> m i
   inc = plus @_ @bln (inject @_ @Integer 1)
   toReal :: AbstractM m => i -> m rea
   toString :: AbstractM m => i -> m str
   quotient :: AbstractM m => i -> i -> m i
   modulo :: AbstractM m => i -> i -> m i
   remainder :: AbstractM m => i -> i -> m i

class (Domain r Double, NumberDomain r bln) => RealDomain r bln int where
   toInt :: AbstractM m => r -> m int
   ceiling :: AbstractM m => r -> m r
   floor :: AbstractM m => r -> m r
   round :: AbstractM m => r -> m r
   log :: AbstractM m => r -> m r
   sin :: AbstractM m => r -> m r
   asin :: AbstractM m => r -> m r
   cos :: AbstractM m => r -> m r
   acos :: AbstractM m => r -> m r
   tan :: AbstractM m => r -> m r
   atan :: AbstractM m => r -> m r
   sqrt :: AbstractM m => r -> m r

instance (NumberDomain a bln, TopLattice a) => NumberDomain (BottomLifted a) bln where 
   isZero Bottom    = mbottom
   isZero (Value a) = isZero a
   random _ = return $ Value top

   plus = mapBL (plus @_ @bln) 
   minus = mapBL (minus @_ @bln) 
   times = mapBL (times @_ @bln) 
   div = mapBL (Domain.Core.NumberDomain.Class.div @_ @bln)
   expt = mapBL (expt @_ @bln) 
   eq = mapBLBool eq 
   ne = mapBLBool ne 
   lt = mapBLBool lt 
   gt = mapBLBool gt 
   ge = mapBLBool ge 
   le = mapBLBool le

mapBL :: Monad m => (t1 -> t2 -> m a) -> BottomLifted t1 -> BottomLifted t2 -> m (BottomLifted a)
mapBL _ Bottom _ = return Bottom 
mapBL _ _ Bottom = return Bottom 
mapBL f (Value a) (Value b) = do v <- f a b; return $ Value v

mapBLBool :: (Monad m, Bool.BoolDomain a) => (t1 -> t2 -> m a) -> BottomLifted t1 -> BottomLifted t2 -> m a
mapBLBool f (Value a) (Value b) = f a b 
mapBLBool _ Bottom _ = return Bool.boolTop 
mapBLBool _ _ Bottom = return Bool.boolTop 