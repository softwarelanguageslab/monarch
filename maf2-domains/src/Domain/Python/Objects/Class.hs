{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module Domain.Python.Objects.Class (
    PyObj(..), 
    at,
    has,
    get,
    set,
    setAttrs,
    atAttr,
    modify,
) where

import Lattice
import Domain.Core hiding (set, from)
import qualified Domain.Core as Domain 
import Domain.Python.World 
import Domain.Core.SeqDomain (SeqDomain)
import qualified Domain.Core.SeqDomain as SeqDomain 

import Control.Monad.Join
import Control.Monad.Escape
import Control.Monad.AbstractM (AbstractM)
import Control.Monad.DomainError (DomainError(..))
import Data.TypeLevel.HMap hiding (set, get)

import Data.Singletons
import Data.Kind 
import Data.Set (Set)
import Data.Map (Map)
import Control.Monad ((>=>))

data AbsJoinLattice obj :: k ~> Constraint
type instance Apply (AbsJoinLattice obj) k = Lattice (Abs obj k)

class (
    Lattice obj,
    ForAll PyPrmKey (AbsJoinLattice obj),
    Abs obj PrmPrm ~ Set (Either PyPrim XPyPrim), 
    Abs obj CloPrm ~ Set (Clo obj),
    Abs obj BndPrm ~ Map (Adr obj) (Ref obj),   -- TODO: this can be generalised  
    SeqDomain     (Abs obj LstPrm),
    SeqDomain.Vlu (Abs obj LstPrm) ~ Ref obj, 
    SeqDomain.Idx (Abs obj LstPrm) ~ Abs obj IntPrm, 
    SeqDomain     (Abs obj TupPrm),
    SeqDomain.Vlu (Abs obj TupPrm) ~ Ref obj, 
    IntDomain     (Abs obj IntPrm),
    Domain.Boo    (Abs obj IntPrm) ~ Abs obj BlnPrm, 
    Domain.Rea    (Abs obj IntPrm) ~ Abs obj ReaPrm,
    Domain.Str    (Abs obj IntPrm) ~ Abs obj StrPrm, 
    RealDomain    (Abs obj ReaPrm),
    Domain.Boo    (Abs obj ReaPrm) ~ Abs obj BlnPrm,
    StringDomain  (Abs obj StrPrm),
    DictionaryDomain (Abs obj DctPrm),
    DKey          (Abs obj DctPrm) ~ Abs obj StrPrm,
    DVlu          (Abs obj DctPrm) ~ Ref obj  
  ) 
  => 
  PyObj obj where
    -- custom representation of ...
    type Ref obj :: Type    -- ... Python references/values
    type Adr obj :: Type    -- ... Python addresses
    type Clo obj :: Type    -- ... Python closures
    -- object creation (with a given class)
    new :: Ref obj -> obj 
    -- an object should contain "primitive fields" ...
    type Abs obj (k :: PyPrmKey) :: Type
    hasPrm :: forall (k :: PyPrmKey) b . BoolDomain b => Sing k -> obj -> b  
    getPrm :: forall k . Sing k -> obj -> Abs obj k
    setPrm :: forall k . Sing k -> Abs obj k -> obj -> obj 
    -- ... and user-defined keyts/attributes
    hasAttr :: BoolDomain b => String -> obj -> b
    getAttr :: String -> obj -> Ref obj  
    setAttr :: String -> Ref obj -> obj -> obj
    setAttrWeak :: String -> Ref obj -> obj -> obj 
    setAttrWeak k v o = o `join` setAttr k v o 

-- | Convenience function to check and retrieve a certain attribute
atAttr :: (AbstractM m, PyObj obj) => String -> obj -> m (Ref obj) 
atAttr attr obj = condCP (return $ hasAttr attr obj)
                         (return $ getAttr attr obj)
                         (escape KeyNotFound)

-- | Convenience function to set multiple attributes
setAttrs :: PyObj obj => [(String, Ref obj)] -> obj -> obj
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

-- | Convenience function to retrieve a primitive field from a Python object, throwing an error if not present
at :: forall (k :: PyPrmKey) obj m . (AbstractM m, PyObj obj, SingI k) => obj -> m (Abs obj k)
at obj = withC_ @(AbsJoinLattice obj) getField s 
  where s = sing @k 
        getField :: Lattice (Abs obj k) => m (Abs obj k)
        getField = condCP (return $ hasPrm s obj)
                          (return $ getPrm s obj)
                          (escape WrongType) 

modify :: forall (k :: PyPrmKey) obj . (PyObj obj, SingI k) => (Abs obj k -> Abs obj k) -> obj -> obj
modify f obj = set @k (f $ get @k obj) obj 
