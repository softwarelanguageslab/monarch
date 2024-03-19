{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module Analysis.Python.Objects.Class (
    PyObj(..), 
    at,
    from, 
    from', 
    has,
    get,
    set,
    setAttrs,
    atAttr,
) where

import Analysis.Python.Infrastructure
import Analysis.Python.Common 

import Domain hiding (set, from)
import Lattice
import Data.TypeLevel.HMap hiding (set, get)
import Domain.Core.SeqDomain (CPList)
import qualified Domain.Core.SeqDomain as SeqDomain 
import Control.Monad.Join
import Control.Monad.Escape

import Control.Monad.AbstractM (AbstractM)
import Control.Monad.DomainError (DomainError(..))

import Data.Singletons
import Data.Kind 
import Data.Set (Set)
import Data.Map (Map)

data AbsJoinLattice obj :: k ~> Constraint
type instance Apply (AbsJoinLattice obj) k = JoinLattice (Abs obj k)

class (
    ForAll PyPrmKey (AbsJoinLattice obj),
    Abs obj NonPrm ~ (),
    Abs obj PrmPrm ~ Set PyPrim, 
    Abs obj BndPrm ~ Map ObjAdr PyVal, 
    Abs obj TupPrm ~ CPList PyVal,
    Abs obj LstPrm ~ CPList PyVal,
    Abs obj CloPrm ~ Set PyClo,
    SeqDomain.Vlu (Abs obj TupPrm) ~ PyVal, 
    IntDomain     (Abs obj IntPrm),
    Domain.Boo    (Abs obj IntPrm) ~ Abs obj BlnPrm, 
    Domain.Rea    (Abs obj IntPrm) ~ Abs obj ReaPrm,
    Domain.Str    (Abs obj IntPrm) ~ Abs obj StrPrm, 
    RealDomain    (Abs obj ReaPrm),
    Domain.Boo    (Abs obj ReaPrm) ~ Abs obj BlnPrm,
    StringDomain  (Abs obj StrPrm)
  ) 
  => 
  PyObj obj where
    -- object creation (with a given class)
    new :: PyVal -> obj 
    -- an object should contain "primitive fields" ...
    type Abs obj (k :: PyPrmKey) :: Type
    hasPrm :: forall (k :: PyPrmKey) b . BoolDomain b => Sing k -> obj -> b  
    getPrm :: forall k . Sing k -> obj -> Abs obj k
    setPrm :: forall k . Sing k -> Abs obj k -> obj -> obj 
    -- ... and user-defined keyts/attributes
    hasAttr :: BoolDomain b => String -> obj -> b
    getAttr :: String -> obj -> PyVal 
    setAttr :: String -> PyVal -> obj -> obj 

-- | Convenience function to check and retrieve a certain attribute
atAttr :: (AbstractM m, PyObj obj) => String -> obj -> m PyVal 
atAttr attr obj = condCP (return $ hasAttr attr obj)
                         (return $ getAttr attr obj)
                         (escape KeyNotFound)

-- | Convenience function to set multiple attributes
setAttrs :: PyObj obj => [(String, PyVal)] -> obj -> obj
setAttrs attrs obj = Prelude.foldr (uncurry setAttr) obj attrs 

-- | Shorter alternative (using SingI) for hasPrm
has :: forall (k :: PyPrmKey) b obj . (PyObj obj, BoolDomain b, SingI k) => obj -> b
has = hasPrm (sing @k)

-- | Shorter alternative (using SingI) for getPrm
get :: forall (k :: PyPrmKey) obj . (PyObj obj, SingI k) => obj -> Abs obj k
get = getPrm (sing @k)

-- | Shorter alternative (using SingI) for setPrm
set :: forall (k :: PyPrmKey) obj . (PyObj obj, SingI k) => Abs obj k -> obj -> obj
set = setPrm (sing @k)

-- | Convenience function to construct a Python object immediately from primitive abstract value
from :: forall (k :: PyPrmKey) obj . (PyObj obj, SingI k) => Abs obj k -> obj 
from v = set @k v (new cls)
  where cls = constant $ TypeObject $ classFor $ sing @k 

-- | Convenience function to construct a Python object immediately from primitive concrete value
from' :: forall (k :: PyPrmKey) obj v . (PyObj obj, Domain (Abs obj k) v, SingI k) => v -> obj 
from' = from @k . Domain.inject  

-- | Convenience function to retrieve a primitive field from a Python object, throwing an error if not present
at :: forall (k :: PyPrmKey) obj m . (AbstractM m, PyObj obj, SingI k) => obj -> m (Abs obj k)
at obj = withC_ @(AbsJoinLattice obj) getField s 
  where s = sing @k 
        getField :: JoinLattice (Abs obj k) => m (Abs obj k)
        getField = condCP (return $ hasPrm s obj)
                          (return $ getPrm s obj)
                          (escape WrongType) 
