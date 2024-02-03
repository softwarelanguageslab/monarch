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
import Data.TypeLevel.HMap (HMap, Assoc, HMapKey, AtKey, AtKey1, InstanceOf, All, ForAllOf, ForAll(..), KeyKind, (::->), (:->), Dict(..), BindingFrom, genHKeys)
import qualified Domain.Core.HMapDomain as HMapDomain
import Domain.Core.HMapDomain (HMapAbs)
import qualified Domain.Core.SeqDomain as SeqDomain
import Domain.Core.SeqDomain (SeqDomain, CPList(..))
import Control.Monad.Join
import Control.Monad.DomainError
import Control.Monad.AbstractM
import Domain (Domain, BoolDomain, NumberDomain, IntDomain, StringDomain, CPDictionary)
import qualified Domain

import Prelude hiding (lookup, exp, True, False, seq, length)
import qualified Prelude
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map, (!))
import qualified Data.Map as Map
import Data.Singletons.TH
import Data.Singletons.Sigma
import Data.Kind
import Control.Monad ((>=>), (<=<))
import Data.Bifunctor

newtype VarAdr = VarAdr String
  deriving (Eq, Ord, Show)
data ObjAdr = PtrAdr PyLoc
            | PrmAdr PyConstant
  deriving (Eq, Ord, Show)

type PyEnv = Map String VarAdr
type PyClo = ([PyPar], PyStm, PyEnv)

data ObjectError = AttributeNotFound
                 | NotMutable
                 | NotCallable
                 | ArityError
                 | TypeMismatch
                 | InvalidMRO

class (Monad m, JoinLattice v) => StoreM m a v | m a -> v where
  extend :: a -> v -> m ()
  update :: a -> v -> m ()
  lookup :: a -> m v

class (Monad m) => AllocM m e a | m e -> a where
  alloc :: e -> m a

allocVal :: (StoreM m a v, AllocM m e a) => e -> v -> m a
allocVal e v = do adr <- alloc e
                  extend adr v
                  return adr

-- Python specific 

-- these are primitive operators in Python 
data PyPrim     = Add
                | Mul
                | Sub
                | Div
  deriving (Eq, Ord)
-- these are constant and pre-allocated objects in memory
data PyConstant = Type      -- 'type'
                | Object    -- 'object'
                -- type objects
                | NoneType
                | BoolType
                | IntType
                | StringType
                | TupleType
                | PrimType
                | BoundType
                | CloType
                -- type names
                | BoundName
                | TupleName
                | StringName
                | IntName
                | PrimName
                | CloName
                | BoolName
                | NoneName
                -- MROs
                | IntMRO
                | StringMRO
                | BoolMRO
                | NoneMRO
                | PrimMRO
                | TupleMRO
                | BoundMRO
                | CloMRO
                -- primitive objects
                | PrimAdd
                | PrimMul
                | PrimDiv
                | PrimSub
                -- some constants
                | None
                | True
                | False
  deriving (Eq, Ord, Enum, Bounded, Show)
-- these values are freshly allocated each time
data PyValue = Num Int
             | Bln Bool
             | Str String
  deriving (Eq, Ord)

class (Monad m,
       MonadJoin m,
       MonadEscape m,
       Domain (Esc m) ObjectError,
       Domain (Esc m) DomainError,
       AllocM m PyExp ObjAdr,
       StoreM m ObjAdr obj)
       =>
       PyM m obj | m -> obj where
  constant :: PyConstant -> m PyVal
  allocate :: PyExp -> PyValue -> m PyVal

--
-- Python values (= set of addrs)
--

newtype PyVal = PyVal { addrs :: Set ObjAdr }
  deriving (Eq, Joinable)

instance JoinLattice PyVal where
  bottom = PyVal bottom

injectAdr :: ObjAdr -> PyVal
injectAdr = PyVal . Set.singleton


deref :: JoinLattice a => PyM m v => (ObjAdr -> v -> m a) -> PyVal -> m a
deref f (PyVal ads) = mJoinMap (\a -> lookup a >>= \v -> f a v) ads

deref' :: PyM m v => PyVal -> m v
deref' (PyVal ads) = mjoins $ map lookup (Set.toList ads)

---
--- Python objects
---

data PyAbsKey = NumKey
              | BlnKey
              | StrKey

type PyPrm (m :: [PyAbsKey :-> Type]) =
  '[
    NumPrm ::-> Assoc NumKey m,
    BlnPrm ::-> Assoc BlnKey m,
    StrPrm ::-> Assoc StrKey m,
    PrmPrm ::-> Set PyPrim,
    CloPrm ::-> Set PyClo,
    BndPrm ::-> Map ObjAdr PyVal, -- alternative, but less precise: (PyVal, PyVal)
    TupPrm ::-> CPList PyVal, -- TODO: could use a more optimised representation (e.g., CPVector)
    LstPrm ::-> CPList PyVal
  ]

data PyPrmKey = NumPrm
              | BlnPrm
              | StrPrm
              | PrmPrm
              | CloPrm
              | BndPrm
              | TupPrm
              | LstPrm
  deriving (Eq, Ord)

genHKeys ''PyPrmKey

data PyObj (m :: [PyAbsKey :-> Type]) = PyObj { dict :: CPDictionary String PyVal,
                                                prim :: HMapAbs (PyPrm m) }

type AllJoin m = (ForAll PyPrmKey (AtKey1 JoinLattice (PyPrm m)),
                  ForAll PyPrmKey (AtKey1 Joinable (PyPrm m)),
                  ForAll PyPrmKey (AtKey1 Eq (PyPrm m)))
type AllAbs m = (AllJoin m,
                 BoolDomain   (Assoc BlnKey m),
                 NumberDomain (Assoc NumKey m),
                 StringDomain (Assoc StrKey m))

deriving instance (ForAll PyPrmKey (AtKey1 Eq       (PyPrm m))) => Eq (PyObj m)
instance          (ForAll PyPrmKey (AtKey1 Joinable (PyPrm m))) => Joinable (PyObj m) where
  join (PyObj d1 p1) (PyObj d2 p2) = PyObj (join d1 d2) (join p1 p2)
instance (AllJoin m) => JoinLattice (PyObj m) where
  bottom = PyObj bottom bottom

allocObj :: PyM pyM (PyObj m) => PyExp -> PyObj m -> pyM PyVal
allocObj e = fmap injectAdr . allocVal e

--
-- Python constants 
--

-- helper function 
injectObj :: (AllJoin m) => PyVal -> [(PyAttr, PyVal)] -> [BindingFrom (PyPrm m)] -> PyObj m
injectObj cls bds prm = PyObj (Domain.from dict) (HMapDomain.from prm)
  where attrs = (ClassAttr, cls) : bds
        dict  = map (first $ Constant . attrStr) attrs

injectObj' :: (PyM pyM (PyObj m), AllJoin m) => PyConstant -> [(PyAttr, PyConstant)] -> [BindingFrom (PyPrm m)] -> pyM (PyObj m)
injectObj' cls bds prm = injectObj <$> constant cls <*> mapM (\(k,v) -> (k,) <$> constant v) bds <*> pure prm

injectPrm :: (PyM pyM (PyObj m), AllJoin m) => PyPrim -> pyM (PyObj m)
injectPrm prm = injectObj' PrimType [] [SPrmPrm :&: Domain.inject prm]

injectStr :: (PyM pyM (PyObj m), AllJoin m, StringDomain (Assoc StrKey m)) => String -> pyM (PyObj m)
injectStr str = injectObj' StringType [] [SStrPrm :&: Domain.inject str]

injectBln :: (PyM pyM (PyObj m), AllJoin m, BoolDomain (Assoc BlnKey m)) => Bool -> pyM (PyObj m)
injectBln bln = injectObj' BoolType [] [SBlnPrm :&: Domain.inject bln]

injectNon :: (PyM pyM (PyObj m), AllJoin m) => pyM (PyObj m)
injectNon = injectObj' NoneType [] []

injectTyp' :: (PyM pyM (PyObj m), AllJoin m) => PyConstant -> PyConstant -> [(PyAttr, PyConstant)] -> pyM (PyObj m)
injectTyp' nam mro mts = injectObj' Type ((NameAttr, nam):(MROAttr, mro):mts) []

injectTup :: (PyM pyM (PyObj m), AllJoin m) => [PyVal] -> pyM (PyObj m)
injectTup vls = injectObj' TupleType [] [STupPrm :&: SeqDomain.fromList vls]

injectTup' :: (PyM pyM (PyObj m), AllJoin m) => [PyConstant] -> pyM (PyObj m)
injectTup' = injectTup <=< mapM constant

injectMRO :: (PyM pyM (PyObj m), AllJoin m) => PyConstant -> pyM (PyObj m)
injectMRO cls = injectTup' [cls, Object]

injectBnd :: (PyM pyM (PyObj m), AllJoin m) => ObjAdr -> PyVal -> pyM (PyObj m)
injectBnd self fun = injectObj' BoundType [] [SBndPrm :&: Map.singleton self fun]



injectPyConstant :: (PyM pyM (PyObj m), AllAbs m) => PyConstant -> pyM (PyObj m)
injectPyConstant Type       = injectObj' Type [] []
injectPyConstant Object     = injectObj' Type [] []
-- types
injectPyConstant IntType    = injectTyp' IntName IntMRO [(AddAttr, PrimAdd),
                                                        (MulAttr, PrimMul)]
injectPyConstant NoneType   = injectTyp' NoneName NoneMRO []
injectPyConstant PrimType   = injectTyp' PrimName PrimMRO []
injectPyConstant BoolType   = injectTyp' BoolName BoolMRO []
injectPyConstant TupleType  = injectTyp' TupleName TupleMRO []
injectPyConstant BoundType  = injectTyp' BoundName BoundMRO []
injectPyConstant StringType = injectTyp' StringName StringMRO []
injectPyConstant CloType    = injectTyp' CloName CloMRO []
-- type names
injectPyConstant NoneName   = injectStr "NoneType"
injectPyConstant IntName    = injectStr "int"
injectPyConstant BoolName   = injectStr "bool"
injectPyConstant StringName = injectStr "str"
injectPyConstant TupleName  = injectStr "tuple"
injectPyConstant PrimName   = injectStr "primitive"
injectPyConstant CloName    = injectStr "function"
injectPyConstant BoundName  = injectStr "bound function"
-- MROs
injectPyConstant NoneMRO    = injectMRO NoneType
injectPyConstant IntMRO     = injectMRO IntType
injectPyConstant BoolMRO    = injectMRO BoolType
injectPyConstant StringMRO  = injectMRO StringType
injectPyConstant TupleMRO   = injectMRO TupleType
injectPyConstant PrimMRO    = injectMRO PrimType
injectPyConstant CloMRO     = injectMRO CloType
injectPyConstant BoundMRO   = injectMRO BoundType
-- primitives 
injectPyConstant PrimAdd    = injectPrm Add
injectPyConstant PrimSub    = injectPrm Sub
injectPyConstant PrimMul    = injectPrm Mul
injectPyConstant PrimDiv    = injectPrm Div
-- pre-allocated constant values
injectPyConstant True       = injectBln Prelude.True
injectPyConstant False      = injectBln Prelude.False
injectPyConstant None       = injectNon


--injectNum :: (PyM pyM (PyObj m), IntDomain (Assoc NumKey m)) => Integer -> pyM (PyObj m) 
--injectNum n = makeObj [SNumPrm :&: Domain.inject n]
--                      [(ClassAttr, IntType)] 

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
                                                (allocObj exp =<< injectBnd self vlu)
                                                (return vlu)

lookupAttrMRO :: forall pyM m . (PyM pyM (PyObj m), AllJoin m) => String -> PyVal -> pyM PyVal
lookupAttrMRO attr =
  deref $ \_ (PyObj dct _) ->
            do mroObj <- Domain.lookupM (Constant $ attrStr MROAttr) dct
               mroTup <- deref' mroObj
               case justOrBot (HMapDomain.lookup STupPrm (prim mroTup)) of
                  BotList       -> escape InvalidMRO
                  CPList l _ _  -> lookupMRO l
                  TopList v     -> lookupLocal v `orElse` escape AttributeNotFound
    where lookupLocal = Domain.lookupM (Constant attr) . dict <=< deref'
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

call :: (PyM pyM (PyObj m), AllJoin m) => PyExp -> [PyVal] -> PyVal -> pyM PyVal 
call pos ags = callObj pos ags <=< deref' 

callObj :: (PyM pyM (PyObj m), AllJoin m) => PyExp -> [PyVal] -> PyObj m -> pyM PyVal 
callObj pos ags obj = condCP (return $ isCallableObj obj)
                             (callFun pos ags obj)
                             (escape NotCallable) 

callFun :: (PyM pyM (PyObj m), AllJoin m) => PyExp -> [PyVal] -> PyObj m -> pyM PyVal 
callFun pos ags (PyObj _ prm) = resBnd `mjoin` resClo `mjoin` resPrm
  where resBnd = maybe mzero (callBnd pos ags) $ HMapDomain.lookup SBndPrm prm 
        resClo = maybe mzero (callClo pos ags) $ HMapDomain.lookup SCloPrm prm 
        resPrm = maybe mzero (callPrm pos ags) $ HMapDomain.lookup SPrmPrm prm 

callBnd :: (PyM pyM (PyObj m), AllJoin m) => PyExp -> [PyVal] -> Map ObjAdr PyVal -> pyM PyVal 
callBnd pos ags = mJoinMap apply . Map.toList
  where apply (rcv, vlu) = callFun pos (injectAdr rcv : ags) =<< deref' vlu 

callPrm :: (PyM pyM (PyObj m), AllJoin m) => PyExp -> [PyVal] -> Set PyPrim -> pyM PyVal 
callPrm pos ags = mJoinMap apply
  where apply prm = applyPrim prm pos ags 

callClo :: (PyM pyM (PyObj m), AllJoin m) => PyExp -> [PyVal] -> Set PyClo -> pyM PyVal 
callClo pos ags = mJoinMap apply
  where apply (prs, bdy, env) = undefined --TODO

applyPrim :: (PyM pyM (PyObj m), AllJoin m) => PyPrim -> PyExp -> [PyVal] -> pyM PyVal
applyPrim _ = undefined --TODO

--lookupAttrInMRO :: forall pyM m . PyM pyM (PyObj m) => String -> [PyVal] -> pyM PyVal
--lookupAttrInMRO _ [] = escape AttributeNotFound
--lookupAttrInMRO _ (c:cs) = undefined 

-- merge :: forall a pyM obj . (PyM pyM obj, JoinLattice a) => [CPList a] -> pyM (CPList a)
-- merge = aux (\ass _ -> SeqDomain.fromList <$> mergeLists ass) (return . TopList)
--   where aux :: ([[a]] -> a -> pyM (CPList a)) -> (a -> pyM (CPList a)) -> [CPList a] -> pyM (CPList a)
--         aux f _ []                  = f [] bottom
--         aux _ _ (BotList      : _)  = return BotList
--         aux f g (CPList l _ v : r)  = aux (\ass a -> f (l:ass) (a `join` v)) (g . join v) r
--         aux _ g (TopList v    : r)  = let f = g . join v in aux (const f) f r

-- mergeLists :: (JoinLattice a, PyM pyM obj) => [[a]] -> pyM [a]
-- mergeLists []   = return []
-- mergeLists ass  = undefined