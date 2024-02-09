{-# LANGUAGE StandaloneKindSignatures #-}
{-# LANGUAGE GADTs                    #-}
{-# LANGUAGE FlexibleInstances        #-}
{-# LANGUAGE UndecidableInstances     #-}
{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE PolyKinds                #-}
{-# LANGUAGE AllowAmbiguousTypes      #-}
{-# LANGUAGE RankNTypes               #-}
{-# LANGUAGE LambdaCase               #-}
{-# LANGUAGE ConstraintKinds          #-}

module Analysis.Python.Objects where

import Lattice hiding (insert)
import Analysis.Python.Syntax hiding (Dict)
import Analysis.Python.Common 
import Analysis.Python.Primitives
import Analysis.Python.Infrastructure
import Analysis.Python.Monad 
import Data.TypeLevel.HMap (HMap, Assoc, HMapKey, AtKey, AtKey1, InstanceOf, All, ForAllOf, ForAll(..), KeyKind, (::->), (:->), Dict(..), BindingFrom, genHKeys)
import qualified Data.TypeLevel.HMap as HMap 
import qualified Domain.Core.HMapDomain as HMapDomain
import Domain.Core.HMapDomain (HMapAbs)
import qualified Domain.Core.SeqDomain as SeqDomain
import Domain.Core.SeqDomain (SeqDomain, CPList(..))
import Control.Monad.Join
import Control.Monad.DomainError
import Control.Monad.AbstractM
import Domain (Domain, BoolDomain, NumberDomain, IntDomain, RealDomain, StringDomain, CPDictionary)
import qualified Domain


import Prelude hiding (lookup, exp, True, False, seq, length, all)
import qualified Prelude
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map, (!))
import qualified Data.Map as Map
import Data.Singletons.TH
import Data.Singletons.Sigma
import Data.Kind
import Control.Monad ((>=>), (<=<), liftM2)
import qualified Control.Monad as Monad 
import Data.Bifunctor
import Data.Maybe (fromJust)
import Data.Function ((&))

---
--- Python objects
---

data PyAbsKey = IntKey
              | ReaKey  
              | BlnKey
              | StrKey

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
    LstPrm ::-> CPList PyVal
  ]


data PyObj (m :: [PyAbsKey :-> Type]) = PyObj { dct :: CPDictionary String PyVal,
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

deriving instance (ForAll PyPrmKey (AtKey1 Eq       (PyPrm m))) => Eq (PyObj m)
instance          (ForAll PyPrmKey (AtKey1 Joinable (PyPrm m))) => Joinable (PyObj m) where
  join (PyObj d1 p1) (PyObj d2 p2) = PyObj (join d1 d2) (join p1 p2)
instance (AllJoin m) => JoinLattice (PyObj m) where
  bottom = PyObj bottom bottom

--
-- Python constants 
--

-- helper function 
injectObj :: (AllJoin m) => PyVal -> [(PyAttr, PyVal)] -> [BindingFrom (PyPrm m)] -> PyObj m
injectObj cls bds prm = PyObj (Domain.from dict) (HMapDomain.from prm)
  where attrs = (ClassAttr, cls) : bds
        dict  = map (first $ Constant . attrStr) attrs

injectObj' :: (AllJoin m) => PyConstant -> [(PyAttr, PyConstant)] -> [BindingFrom (PyPrm m)] -> PyObj m
injectObj' cls bds = injectObj (constant cls) (map (second constant) bds)

injectPrm :: (AllJoin m) => PyPrim -> PyObj m
injectPrm prm = injectObj' (TypeObject PrimType) [] [SPrmPrm :&: Domain.inject prm]

injectStr :: (AllJoin m, StringDomain (Assoc StrKey m)) => String -> PyObj m
injectStr str = injectObj' (TypeObject StringType) [] [SStrPrm :&: Domain.inject str]

injectBln :: (AllJoin m, BoolDomain (Assoc BlnKey m)) => Bool -> PyObj m
injectBln bln = injectObj' (TypeObject BoolType) [] [SBlnPrm :&: Domain.inject bln]

injectNon :: AllJoin m => PyObj m
injectNon = injectObj' (TypeObject NoneType) [] []

injectTup :: AllJoin m => [PyVal] -> PyObj m
injectTup vls = injectObj' (TypeObject TupleType) [] [STupPrm :&: SeqDomain.fromList vls]

injectTup' :: AllJoin m => [PyConstant] -> PyObj m
injectTup' = injectTup . map constant

injectBnd :: AllJoin m => ObjAdr -> PyVal -> PyObj m
injectBnd self fun = injectObj' (TypeObject BoundType) [] [SBndPrm :&: Map.singleton self fun]

  
class PyDomain m k where
  from :: Assoc k (PyPrm m) -> PyObj m 
instance AllJoin m => PyDomain m IntPrm where
  from num = injectObj' (TypeObject IntType) [] [SIntPrm :&: num]
instance AllJoin m => PyDomain m ReaPrm where
  from num = injectObj' (TypeObject FloatType)  [] [SReaPrm :&: num]
instance AllJoin m => PyDomain m BlnPrm where
  from bln = injectObj' (TypeObject BoolType) [] [SBlnPrm :&: bln]

injectPyConstant :: AllAbs m => PyConstant -> PyObj m
injectPyConstant Type     = injectObj' Type [] []
injectPyConstant Object   = injectObj' Type [] []
injectPyConstant True     = injectBln Prelude.True
injectPyConstant False    = injectBln Prelude.False
injectPyConstant None     = injectNon
injectPyConstant (TypeObject typ) = injectObj' Type allAttrs []
  where methodAttrs = map (second PrimObject) (methods typ)
        allAttrs    = [(NameAttr, TypeName typ),(MROAttr, TypeName typ)] ++ methodAttrs
--injectTyp' (TypeName typ) (TypeMRO typ) (methods typ) 
injectPyConstant (TypeName typ)   = injectStr $ name typ
injectPyConstant (TypeMRO typ)    = injectTup' [TypeObject typ, Object]
injectPyConstant (PrimObject prm) = injectPrm prm 

isBindable :: (PyM pyM (PyObj m), AllJoin m, BoolDomain b) => PyVal -> pyM b
isBindable = fmap isBindableObj . deref'

isBindableObj :: (AllJoin m, BoolDomain b) => PyObj m -> b
isBindableObj (PyObj _ prm) = Domain.or (HMapDomain.member SPrmPrm prm)
                                        (HMapDomain.member SCloPrm prm)

lookupAttr :: forall pyM m . (PyM pyM (PyObj m), AllJoin m) => PyExp -> String -> PyVal -> pyM PyVal
lookupAttr exp attr =
  deref $ \adr (PyObj dct _) ->
            condCP (return $ Domain.contains (Constant attr) dct)
                   (return $ Domain.lookup   (Constant attr) dct)
                   -- if not found locally => look in the class
                   (do cls <- Domain.lookupM (Constant $ attrStr ClassAttr) dct
                       lookupAttrInClass exp attr adr cls)

lookupAttrInClass :: forall pyM m . (PyM pyM (PyObj m), AllJoin m) => PyExp -> String -> ObjAdr -> PyVal -> pyM PyVal
lookupAttrInClass exp attr self cls = do vlu <- lookupAttrMRO attr cls
                                         condCP (isBindable vlu)
                                                (allocObj exp $ injectBnd self vlu)
                                                (return vlu)

lookupAttrMRO :: forall pyM m . (PyM pyM (PyObj m), AllJoin m) => String -> PyVal -> pyM PyVal
lookupAttrMRO attr =
  deref $ \_ (PyObj dct _) ->
            do mroObj <- Domain.lookupM (Constant $ attrStr MROAttr) dct
               mroTup <- deref' mroObj
               case justOrBot (HMapDomain.lookup STupPrm (prm mroTup)) of
                  BotList       -> escape InvalidMRO
                  CPList l _ _  -> lookupMRO l
                  TopList v     -> lookupLocal v `orElse` escape AttributeNotFound
    where lookupLocal = Domain.lookupM (Constant attr) . dct <=< deref'
          lookupMRO   = foldr (orElse . lookupLocal) (escape AttributeNotFound)

--

setAttr :: PyM pyM (PyObj m) => String -> PyVal -> PyVal -> pyM ()
setAttr attr vlu =
  deref $ \adr (PyObj dct prm) ->
            update adr $ PyObj (Domain.updateWeak (Constant attr) vlu dct) prm    -- TODO: support strong update

--

isCallableObj :: (AllJoin m, BoolDomain b) => PyObj m -> b
isCallableObj (PyObj _ prm) =  HMapDomain.member SBndPrm prm 
                               `Domain.or`
                               HMapDomain.member SCloPrm prm
                               `Domain.or`
                               HMapDomain.member SPrmPrm prm

isFloatObj :: (AllJoin m, BoolDomain b) => PyObj m -> b
isFloatObj = HMapDomain.member SReaPrm . prm  

isIntObj :: (AllJoin m, BoolDomain b) => PyObj m -> b
isIntObj = HMapDomain.member SIntPrm . prm 

call :: (PyM pyM (PyObj m), AllAbs m) => PyExp -> [PyVal] -> PyVal -> pyM PyVal 
call pos ags = callObj pos ags <=< deref' 

callObj :: (PyM pyM (PyObj m), AllAbs m) => PyExp -> [PyVal] -> PyObj m -> pyM PyVal 
callObj pos ags obj = condCP (return $ isCallableObj obj)
                             (callFun pos ags obj)
                             (escape NotCallable) 

callFun :: (PyM pyM (PyObj m), AllAbs m) => PyExp -> [PyVal] -> PyObj m -> pyM PyVal 
callFun pos ags (PyObj _ prm) = resBnd `mjoin` resClo `mjoin` resPrm
  where resBnd = maybe mzero (callBnd pos ags) $ HMapDomain.lookup SBndPrm prm 
        resClo = maybe mzero (callClo pos ags) $ HMapDomain.lookup SCloPrm prm 
        resPrm = maybe mzero (callPrm pos ags) $ HMapDomain.lookup SPrmPrm prm 

callBnd :: (PyM pyM (PyObj m), AllAbs m) => PyExp -> [PyVal] -> Map ObjAdr PyVal -> pyM PyVal 
callBnd pos ags = mJoinMap apply . Map.toList
  where apply (rcv, vlu) = callFun pos (injectAdr rcv : ags) =<< deref' vlu 

callPrm :: forall pyM m . (PyM pyM (PyObj m), AllAbs m) => PyExp -> [PyVal] -> Set PyPrim -> pyM PyVal 
callPrm pos ags = mJoinMap apply
  where apply prm = undefined --applyPrim @(PyPrm m) prm pos ags 

callClo :: (PyM pyM (PyObj m), AllJoin m) => PyExp -> [PyVal] -> Set PyClo -> pyM PyVal 
callClo pos ags = mJoinMap apply
  where apply (prs, bdy, env) = undefined --TODO
