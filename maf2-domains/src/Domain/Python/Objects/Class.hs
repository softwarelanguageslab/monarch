{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE UndecidableInstances #-}

module Domain.Python.Objects.Class (
    PyObj(..), 
    Abs,
    has,
    get,
    set,
    setAttrs,
    at,
    atAttr,
    PyMapping,
) where

import Lattice
import Domain.Core hiding (set, from)
import qualified Domain.Core as Domain 
import Domain.Python.World 
import Domain.Core.SeqDomain (SeqDomain)
import qualified Domain.Core.SeqDomain as SeqDomain 

import Control.Monad.AbstractM (AbstractM)
import Data.TypeLevel.HMap hiding (set, get)

import Data.Singletons
import Data.Kind 
import Data.Set (Set)
import Data.Map (Map)
import Data.Function ((&))
import Data.Maybe (fromJust)

type Abs obj k = Assoc k (PyPrmMap obj)

data AbsJoinLattice obj :: k ~> Constraint
type instance Apply (AbsJoinLattice obj) k = (PartialOrder (Abs obj k), Joinable (Abs obj k), Eq (Abs obj k))

-- TODO: this can be shorter
type PyMapping obj = '[
                        IntPrm ::-> Abs obj IntPrm,
                        ReaPrm ::-> Abs obj ReaPrm,
                        BlnPrm ::-> Abs obj BlnPrm,
                        StrPrm ::-> Abs obj StrPrm,
                        PrmPrm ::-> Abs obj PrmPrm,
                        CloPrm ::-> Abs obj CloPrm,
                        BndPrm ::-> Abs obj BndPrm,
                        TupPrm ::-> Abs obj TupPrm,
                        LstPrm ::-> Abs obj LstPrm,
                        DctPrm ::-> Abs obj DctPrm,
                        DfrPrm ::-> Abs obj DfrPrm, 
                        SrsPrm ::-> Abs obj SrsPrm
                      ]

class (
    Eq obj,
    Joinable obj,
    ForAll PyPrmKey (AbsJoinLattice obj),
    Abs obj PrmPrm ~ Set (Either PyPrim XPyPrim), 
    Abs obj CloPrm ~ Set (Clo obj),
    Abs obj BndPrm ~ Map (Adr obj) (Ref obj),   -- TODO: this can be generalised  
    SeqDomain      (Abs obj LstPrm),
    SeqDomain.Vlu  (Abs obj LstPrm) ~ Ref obj, 
    SeqDomain.Idx  (Abs obj LstPrm) ~ Abs obj IntPrm, 
    SeqDomain      (Abs obj TupPrm),
    SeqDomain.Vlu  (Abs obj TupPrm) ~ Ref obj, 
    IntDomain      (Abs obj IntPrm),
    Domain.BoolFor (Abs obj IntPrm) ~ Abs obj BlnPrm, 
    Domain.Rea     (Abs obj IntPrm) ~ Abs obj ReaPrm,
    Domain.Str     (Abs obj IntPrm) ~ Abs obj StrPrm, 
    RealDomain     (Abs obj ReaPrm),
    Domain.BoolFor (Abs obj ReaPrm) ~ Abs obj BlnPrm,
    StringDomain   (Abs obj StrPrm),
    DictionaryDomain (Abs obj DctPrm),
    DKey           (Abs obj DctPrm) ~ Abs obj StrPrm,
    DVlu           (Abs obj DctPrm) ~ Ref obj  
  ) 
  => 
  PyObj obj where
    -- custom representation of ...
    type Ref obj :: Type    -- ... Python references/values
    type Adr obj :: Type    -- ... Python addresses
    type Clo obj :: Type    -- ... Python closures
    -- object creation (with a given class)
    emptyObj :: obj 
    new :: [(String, Ref obj)] -> [BindingFrom (PyPrmMap obj)] -> obj 
    new attrs prms = emptyObj  
                        & setAttrs attrs
                        & setPrms prms 
    -- an object should contain "primitive fields" ...
    type PyPrmMap obj :: [PyPrmKey :-> Type]
    hasPrm :: forall (k :: PyPrmKey) b . BoolDomain b => Sing k -> obj -> b  
    getPrm :: forall k m . AbstractM m => Sing k -> obj -> m (Abs obj k)
    setPrm :: Sing k -> Abs obj k -> obj -> obj 
    -- ... and user-defined keyts/attributes
    hasAttr :: BoolDomain b => String -> obj -> b
    getAttr :: AbstractM m => String -> obj -> m (Ref obj) 
    setAttr :: String -> Ref obj -> obj -> obj
    setAttrWeak :: String -> Ref obj -> obj -> obj 
    setAttrWeak k v o = join o $ setAttr k v o 

-- | Convenience function to set multiple attributes/primitives
setAttrs :: PyObj obj => [(String, Ref obj)] -> obj -> obj
setAttrs = flip $ Prelude.foldr (uncurry setAttr)

setPrms :: PyObj obj => [BindingFrom (PyPrmMap obj)] -> obj -> obj 
setPrms = flip $ Prelude.foldr (\(k :&: v) -> setPrm k v)

-- | Shorter alternative (using SingI) for hasPrm
has :: forall (k :: PyPrmKey) b obj . (PyObj obj, BoolDomain b, SingI k) => obj -> b
has = hasPrm (sing @k)

-- | Shorter alternative (using SingI) for getPrm
get :: forall (k :: PyPrmKey) m obj . (PyObj obj, AbstractM m, SingI k) => obj -> m (Abs obj k)
get = getPrm (sing @k)

at :: forall k obj . (PyObj obj, SingI k) => obj -> Abs obj k
at obj = fromJust $ get @k obj 

atAttr :: PyObj obj => String -> obj -> Ref obj 
atAttr a obj = fromJust $ getAttr a obj 

-- | Shorter alternative (using SingI) for setPrm
set :: forall (k :: PyPrmKey) obj . (PyObj obj, SingI k) => Abs obj k -> obj -> obj
set = setPrm (sing @k)


