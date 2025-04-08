module Domain.Core.NumberDomain.Class (NumberDomain(..), IntDomain(..), RealDomain(..)) where

import Lattice.Class
import Domain.Class 
import Control.Monad.AbstractM
import Domain.Core.BoolDomain.Class (BoolFor)
import qualified Domain.Core.BoolDomain.Class as Bool

import Data.Kind 
import Lattice.BottomLiftedLattice

class (Joinable n, Bool.BoolDomain (BoolFor n)) => NumberDomain n where
   isZero :: AbstractM m => n -> m (BoolFor n)
   random :: AbstractM m => n -> m n
   plus :: AbstractM m => n -> n -> m n
   minus :: AbstractM m => n -> n -> m n
   times :: AbstractM m => n -> n -> m n
   div :: AbstractM m => n -> n -> m n
   expt :: AbstractM m => n -> n -> m n
   eq :: AbstractM m => n -> n -> m (BoolFor n)
   ne :: AbstractM m => n -> n -> m (BoolFor n)
   ne a b = Bool.not <$> eq a b 
   lt :: AbstractM m => n -> n -> m (BoolFor n)
   gt :: AbstractM m => n -> n -> m (BoolFor n)
   gt = flip lt 
   ge :: AbstractM m => n -> n -> m (BoolFor n)
   ge a b = Bool.not <$> lt a b 
   le :: AbstractM m => n -> n -> m (BoolFor n)
   le a b = Bool.not <$> gt a b 

class (Domain i Integer, NumberDomain i) => IntDomain i where
   type Str i :: Type
   type Rea i :: Type
   inc :: AbstractM m => i -> m i
   inc = plus (inject @_ @Integer 1)
   toReal :: AbstractM m => i -> m (Rea i)
   toString :: AbstractM m => i -> m (Str i )
   quotient :: AbstractM m => i -> i -> m i
   modulo :: AbstractM m => i -> i -> m i
   remainder :: AbstractM m => i -> i -> m i

class (Domain r Double, NumberDomain r) => RealDomain r where
   type IntR r :: Type
   toInt :: AbstractM m => r -> m (IntR r)
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

type instance BoolFor (BottomLifted a) = BoolFor a
instance (NumberDomain a, TopLattice a) => NumberDomain (BottomLifted a) where 
   isZero Bottom = return Bool.false  
   isZero (Value a) = isZero a
   random _ = return $ Value top

   plus = mapBL plus 
   minus = mapBL minus 
   times = mapBL times 
   div = mapBL Domain.Core.NumberDomain.Class.div 
   expt = mapBL expt 
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