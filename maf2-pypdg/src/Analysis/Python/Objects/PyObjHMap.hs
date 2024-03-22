{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}

module Analysis.Python.Objects.PyObjHMap where

import Analysis.Python.Objects.Class 
import Analysis.Python.Infrastructure
import Analysis.Python.Common

import Lattice
import qualified Domain 
import Domain.Core
import Domain.Core.SeqDomain
import Domain.Core.HMapDomain

import qualified Domain.Core.HMapDomain as HMapDomain 
import Data.TypeLevel.HMap 
import qualified Data.TypeLevel.HMap as HMap  

import Data.Set (Set)
import Data.Map (Map)
import Data.Kind 
import Data.Maybe
import Data.Singletons (fromSing)
import Data.Singletons.Sigma (Sigma((:&:)))

--
-- Configuring the abstractions 
--

data PyAbsKey = IntKey
              | ReaKey  
              | BlnKey
              | StrKey

type PyObjCP = PyObjHMap '[IntKey ::-> CP Integer,
                           ReaKey ::-> CP Double,  
                           BlnKey ::-> CP Bool,
                           StrKey ::-> CP String]

type PyPrm (m :: [PyAbsKey :-> Type]) =
  '[
    IntPrm ::-> Assoc IntKey m,
    ReaPrm ::-> Assoc ReaKey m,
    BlnPrm ::-> Assoc BlnKey m,
    StrPrm ::-> Assoc StrKey m,
    PrmPrm ::-> Set PyPrim,
    CloPrm ::-> Set PyClo,
    BndPrm ::-> Map ObjAdr PyVal,   -- alternative, but less precise: (PyVal, PyVal)
    TupPrm ::-> CPList PyVal,       -- TODO: could use a more optimised representation (e.g., CPVector)
    LstPrm ::-> CPList PyVal,
    NonPrm ::-> ()
  ]

--
-- The PyObjHMap type
--

data PyObjHMap (m :: [PyAbsKey :-> Type]) = PyObjHMap { dct :: CPDictionary String PyVal,
                                                        prm :: HMapAbs (PyPrm m) }

type AllJoin m = (ForAll PyPrmKey (AtKey1 JoinLattice (PyPrm m)),
                  ForAll PyPrmKey (AtKey1 Joinable (PyPrm m)),
                  ForAll PyPrmKey (AtKey1 Eq (PyPrm m)))
type AllAbs m = (AllJoin m,
                 BoolDomain   (Assoc BlnKey m),
                 IntDomain    (Assoc IntKey m),
                 Domain.Rea   (Assoc IntKey m) ~ Assoc ReaKey m,
                 Domain.Str   (Assoc IntKey m) ~ Assoc StrKey m,
                 Domain.Boo   (Assoc IntKey m) ~ Assoc BlnKey m,
                 RealDomain   (Assoc ReaKey m),
                 Domain.Boo   (Assoc ReaKey m) ~ Assoc BlnKey m,
                 StringDomain (Assoc StrKey m))

deriving instance (ForAll PyPrmKey (AtKey1 Eq       (PyPrm m))) => Eq (PyObjHMap m)
instance          (ForAll PyPrmKey (AtKey1 Joinable (PyPrm m))) => Joinable (PyObjHMap m) where
  join (PyObjHMap d1 p1) (PyObjHMap d2 p2) = PyObjHMap (join d1 d2) (join p1 p2)
instance (AllJoin m) => JoinLattice (PyObjHMap m) where
  bottom = PyObjHMap bottom bottom

instance (ForAll PyPrmKey (AtKey1 Show (PyPrm m))) => Show (PyObjHMap m) where
  show (PyObjHMap dct (HMapAbs (prm, _))) = show primitives ++ "(" ++ attributes ++ ")" 
    where attributes = show dct
          primitives = Prelude.map showPrm (HMap.toList prm)
          showPrm :: BindingFrom (PyPrm m) -> (String, String) 
          showPrm (key :&: vlu) = withC_ @(AtKey1 Show (PyPrm m)) (show $ fromSing key, show vlu) key

--
-- Making an instance of PyObj 
--

instance AllAbs m => PyObj (PyObjHMap m) where
    -- creation
    new cls = PyObjHMap dct prm
        where dct = Domain.from [(Constant (attrStr ClassAttr), cls)]
              prm = HMapDomain.empty 
    -- primitives
    type Abs (PyObjHMap m) k = Assoc k (PyPrm m)
    hasPrm k = HMapDomain.member k . prm 
    getPrm k = fromJust . HMapDomain.lookup k . prm 
    setPrm k v (PyObjHMap dct prm) = PyObjHMap dct $ HMapDomain.insert k v prm 
    -- attributes
    hasAttr k = Domain.contains (Constant k) . dct
    getAttr k = Domain.lookup (Constant k) . dct 
    setAttr k v (PyObjHMap dct prm) = PyObjHMap (Domain.update (Constant k) v dct) prm 
    setAttrWeak k v (PyObjHMap dct prm) = PyObjHMap (Domain.updateWeak (Constant k) v dct) prm 