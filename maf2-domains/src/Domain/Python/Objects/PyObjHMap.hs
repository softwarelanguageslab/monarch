{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ConstraintKinds #-}

module Domain.Python.Objects.PyObjHMap where

import Lattice
import qualified Domain 
import Domain.Core
import Domain.Core.SeqDomain
import Domain.Python.World 
import Domain.Python.Objects.Class 

import Domain.Core.HMapDomain (HMapAbs(..))
import qualified Domain.Core.HMapDomain as HMapDomain 
import Data.TypeLevel.HMap 
import qualified Data.TypeLevel.HMap as HMap  

import Data.Set (Set)
import qualified Data.Set as Set 
import Data.Map (Map)
import qualified Data.Map as Map 
import Data.Kind 
import Data.Maybe
import Data.Singletons (fromSing)
import Data.Singletons.Sigma (Sigma((:&:)))
import Lattice.ReversePowerSetLattice as RSet 
import Data.Function ((&))
import Data.List (intercalate)

--
-- Configuring the abstractions 
--

data PyAbsKey = IntKey
              | ReaKey  
              | BlnKey
              | StrKey

type PyPrm (m :: [PyAbsKey :-> Type]) vlu adr clo =
  '[
    IntPrm ::-> Assoc IntKey m,
    ReaPrm ::-> Assoc ReaKey m,
    BlnPrm ::-> Assoc BlnKey m,
    StrPrm ::-> Assoc StrKey m,
    PrmPrm ::-> Set PyPrim,
    CloPrm ::-> Set clo,
    BndPrm ::-> Map adr vlu,    -- alternative, but less precise: (PyVal, PyVal)
    TupPrm ::-> CPList vlu,     -- TODO: could use a more optimised representation (e.g., CPVector)
    LstPrm ::-> CPList vlu,
    NonPrm ::-> ()
  ]

--
-- The PyObjHMap type
--

data PyObjHMap (m :: [PyAbsKey :-> Type]) vlu adr clo = PyObjHMap { dct :: CPDictionary String vlu,
                                                                    prm :: HMapAbs (PyPrm m vlu adr clo) }

type AllJoin m vlu adr clo = (ForAll PyPrmKey (AtKey1 JoinLattice (PyPrm m vlu adr clo)),
                              ForAll PyPrmKey (AtKey1 Joinable (PyPrm m vlu adr clo)),
                              ForAll PyPrmKey (AtKey1 Eq (PyPrm m vlu adr clo)))
type AllAbs m vlu adr clo = (AllJoin m vlu adr clo,
                             JoinLattice vlu,
                             BoolDomain   (Assoc BlnKey m),
                             IntDomain    (Assoc IntKey m),
                             Domain.Rea   (Assoc IntKey m) ~ Assoc ReaKey m,
                             Domain.Str   (Assoc IntKey m) ~ Assoc StrKey m,
                             Domain.Boo   (Assoc IntKey m) ~ Assoc BlnKey m,
                             RealDomain   (Assoc ReaKey m),
                             Domain.Boo   (Assoc ReaKey m) ~ Assoc BlnKey m,
                             StringDomain (Assoc StrKey m))

deriving instance (JoinLattice vlu, ForAll PyPrmKey (AtKey1 Eq       (PyPrm m vlu adr clo))) => Eq (PyObjHMap m vlu adr clo)
instance          (JoinLattice vlu, ForAll PyPrmKey (AtKey1 Joinable (PyPrm m vlu adr clo))) => Joinable (PyObjHMap m vlu adr clo) where
  join (PyObjHMap d1 p1) (PyObjHMap d2 p2) = PyObjHMap (join d1 d2) (join p1 p2)
instance (JoinLattice vlu, AllJoin m vlu adr clo) => JoinLattice (PyObjHMap m vlu adr clo) where
  bottom = PyObjHMap bottom bottom

instance (Show vlu, ForAll PyPrmKey (AtKey1 Show (PyPrm m vlu adr clo))) => Show (PyObjHMap m vlu adr clo) where
  show (PyObjHMap BotDict _) = "⊥"
  show (PyObjHMap _ (HMapAbs (_, RPBottom))) = "⊥"
  show (PyObjHMap (TopDict _ _) _) = error "this should not happen" -- because we only use Constant CP keys
  show (PyObjHMap (CPDict objKys objMap _) (HMapAbs (prmMap, prmKys))) = str 
    where -- user object bindings
          objAttrs = Prelude.map showBnd (Map.toList objMap)
          showBnd (key, vlu) =
            let prefix
                  | Set.member key objKys = ""
                  | otherwise             = "?"
             in (prefix ++ key, show vlu)
          -- primitive object bindings
          prmAttrs = Prelude.map showPrm (HMap.toList prmMap)
          showPrm (key :&: vlu) = 
            let dkey = fromSing key 
                prefix
                  | RSet.contains dkey prmKys = "@"
                  | otherwise                 = "?@"
             in withC_ @(AtKey1 Show (PyPrm m vlu adr clo)) (prefix ++ show dkey, show vlu) key
          -- all bindings
          allAttrs = objAttrs ++ prmAttrs 
          str = allAttrs 
                  & Prelude.map (\(k,v) -> k ++ " → " ++ v)
                  & intercalate ", "
                  & ("{" ++)
                  & (++ "}")


--
-- Making an instance of PyObj 
--

instance (Ord clo, Ord adr, AllAbs m vlu adr clo) => PyObj (PyObjHMap m vlu adr clo) where
    type Ref (PyObjHMap m vlu adr clo) = vlu 
    type Adr (PyObjHMap m vlu adr clo) = adr
    type Clo (PyObjHMap m vlu adr clo) = clo 
    -- creation
    new cls = PyObjHMap dct prm
        where dct = Domain.from [(Constant (attrStr ClassAttr), cls)]
              prm = HMapDomain.empty 
    -- primitives
    type Abs (PyObjHMap m vlu adr clo) k = Assoc k (PyPrm m vlu adr clo)
    hasPrm k = HMapDomain.member k . prm 
    getPrm k = fromJust . HMapDomain.lookup k . prm 
    setPrm k v (PyObjHMap dct prm) = PyObjHMap dct $ HMapDomain.insert k v prm 
    -- attributes
    hasAttr k = Domain.contains (Constant k) . dct
    getAttr k = Domain.lookup (Constant k) . dct 
    setAttr k v (PyObjHMap dct prm) = PyObjHMap (Domain.update (Constant k) v dct) prm 
    setAttrWeak k v (PyObjHMap dct prm) = PyObjHMap (Domain.updateWeak (Constant k) v dct) prm 

--
-- A common instantiation
--

type PyObjCP = PyObjHMap '[IntKey ::-> CP Integer,
                           ReaKey ::-> CP Double,  
                           BlnKey ::-> CP Bool,
                           StrKey ::-> CP String]