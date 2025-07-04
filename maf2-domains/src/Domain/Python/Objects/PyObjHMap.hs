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
import Data.Singletons (fromSing)
import Lattice.ReversePowerSetLattice as RSet 
import Data.Function ((&))
import Data.List (intercalate)
import Lattice.BottomLiftedLattice (BottomLifted)
import Lattice.TopLattice (Top)
import Control.Monad.Join (MonadBottom(..))
import qualified Domain.Core.DictionaryDomain.CPDict as CPDict
import GHC.Generics (Generic)
import Control.DeepSeq (NFData)
import Domain.Python.DataFrameDomain (CPDataFrame)

--
-- Configuring the abstractions 
--

data PyAbsKey = IntKey
              | ReaKey  
              | BlnKey
              | VluKey
              | AdrKey
              | CloKey 
              | DfrKey
              | SrsKey

type PyPrm (m :: [PyAbsKey :-> Type]) =
  '[
    IntPrm ::-> Assoc IntKey m,
    ReaPrm ::-> Assoc ReaKey m,
    BlnPrm ::-> Assoc BlnKey m,
    StrPrm ::-> CP String, 
    PrmPrm ::-> Set (Either PyPrim XPyPrim),
    CloPrm ::-> Set (Assoc CloKey m),
    BndPrm ::-> Map (Assoc AdrKey m) (Assoc VluKey m),  -- alternative, but less precise: (PyVal, PyVal)
    TupPrm ::-> CPList (Assoc VluKey m),                -- TODO: could use a more optimised representation (e.g., CPVector)
    LstPrm ::-> CPList (Assoc VluKey m),
    DctPrm ::-> CPDictionary String (Assoc VluKey m),
    DfrPrm ::-> CPDataFrame (Assoc VluKey m),
    SrsPrm ::-> CP Bool
  ]

--
-- The PyObjHMap type
--

data PyObjHMap (m :: [PyAbsKey :-> Type]) = PyObjHMap { dct :: CPDictionary String (Assoc VluKey m),
                                                        prm :: HMapAbs (PyPrm m) }
                            deriving (Generic)

instance (NFData (CPDictionary String (Assoc VluKey m)), NFData (HMapAbs (PyPrm m))) => NFData (PyObjHMap m) where
 

type AllJoin m = (ForAll PyPrmKey (AtKey1 Joinable (PyPrm m)),
                  ForAll PyPrmKey (AtKey1 PartialOrder (PyPrm m)),
                  ForAll PyPrmKey (AtKey1 Eq (PyPrm m)))
type AllAbs m = (AllJoin m,
                 Eq           (Assoc VluKey m),
                 PartialOrder (Assoc VluKey m),
                 Joinable     (Assoc VluKey m),
                 BoolDomain   (Assoc BlnKey m),
                 IntDomain    (Assoc IntKey m) (Assoc BlnKey m) (CP String) (Assoc ReaKey m),
                 RealDomain   (Assoc ReaKey m) (Assoc BlnKey m) (Assoc IntKey m),
                 StringDomain (CP String) (Assoc BlnKey m) (Assoc IntKey m) (CP Char))

deriving instance (Eq       (Assoc VluKey m), ForAll PyPrmKey (AtKey1 Eq       (PyPrm m))) => Eq       (PyObjHMap m)
instance          (Joinable (Assoc VluKey m), ForAll PyPrmKey (AtKey1 Joinable (PyPrm m))) => Joinable (PyObjHMap m) where
  join (PyObjHMap d1 p1) (PyObjHMap d2 p2) = PyObjHMap (join d1 d2) (join p1 p2)

instance (Show (Assoc VluKey m), ForAll PyPrmKey (AtKey1 Show (PyPrm m))) => Show (PyObjHMap m) where
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
             in withC_ @(AtKey1 Show (PyPrm m)) (prefix ++ show dkey, show vlu) key
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

-- TODO: this currently really only works for CP domains due to the fixed usage of CPList 
instance (Closure (Assoc CloKey m), Ord (Assoc CloKey m), Ord (Assoc AdrKey m), Assoc IntKey m ~ CP Integer, AllAbs m) => PyObj (PyObjHMap m) where
    type Ref (PyObjHMap m) = Assoc VluKey m 
    type Adr (PyObjHMap m) = Assoc AdrKey m
    type Clo (PyObjHMap m) = Assoc CloKey m 
    -- creation
    emptyObj = PyObjHMap Domain.empty HMapDomain.empty 
    new attrs prims = PyObjHMap (CPDict.fromList attrs) (HMapDomain.from prims) -- not really needed ... 
    -- primitives
    type PyPrmMap (PyObjHMap m) = PyPrm m
    hasPrm k = HMapDomain.member k . prm 
    getPrm k = maybe mbottom return . HMapDomain.lookup k . prm 
    setPrm k v (PyObjHMap dct prm) = PyObjHMap dct $ HMapDomain.insert k v prm 
    -- attributes
    hasAttr k = Domain.containsKey k . dct
    getAttr k = Domain.lookup (Constant k) . dct 
    setAttr k v (PyObjHMap dct prm) = PyObjHMap (Domain.updateAt k v dct) prm 
    setAttrWeak k v (PyObjHMap dct prm) = PyObjHMap (Domain.updateAtWeak k v dct) prm 

--
-- A common instantiation
--

type PyObjCP vlu adr clo = PyObjHMap '[IntKey ::-> CP Integer,
                                       ReaKey ::-> CP Double,  
                                       BlnKey ::-> CP Bool,
                                       VluKey ::-> vlu,
                                       AdrKey ::-> adr, 
                                       CloKey ::-> clo]
