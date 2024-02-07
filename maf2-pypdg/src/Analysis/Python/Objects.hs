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

import Prelude hiding (lookup, exp, True, False, seq, length)
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
data PyPrim     = IntAdd
                | IntMul
                | IntSub
                | IntTrueDiv
                | IntEq
                | IntNe
                | IntLt
                | IntGt
                | IntLe
                | IntGe
                | FloatAdd
                | FloatSub
                | FloatMul
                | FloatTrueDiv
                | FloatEq
                | FloatNe
                | FloatLt
                | FloatGt
                | FloatLe
                | FloatGe
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
                | FloatType 
                -- type names
                | BoundName
                | TupleName
                | StringName
                | IntName
                | PrimName
                | CloName
                | BoolName
                | NoneName
                | FloatName 
                -- MROs
                | IntMRO
                | StringMRO
                | BoolMRO
                | NoneMRO
                | PrimMRO
                | TupleMRO
                | BoundMRO
                | CloMRO
                | FloatMRO 
                -- primitive objects
                | PrimIntAdd
                | PrimIntSub
                | PrimIntMul
                | PrimIntTrueDiv
                | PrimFloatAdd
                | PrimFloatSub
                | PrimFloatMul
                | PrimFloatTrueDiv 
                -- some constants
                | None
                | True
                | False
  deriving (Eq, Ord, Enum, Bounded, Show)

class (Monad m,
       MonadJoin m,
       MonadEscape m,
       Domain (Esc m) ObjectError,
       Domain (Esc m) DomainError,
       AllocM m PyExp ObjAdr,
       StoreM m ObjAdr obj)
       =>
       PyM m obj | m -> obj

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
    BndPrm ::-> Map ObjAdr PyVal, -- alternative, but less precise: (PyVal, PyVal)
    TupPrm ::-> CPList PyVal, -- TODO: could use a more optimised representation (e.g., CPVector)
    LstPrm ::-> CPList PyVal
  ]

data PyPrmKey = IntPrm
              | ReaPrm 
              | BlnPrm
              | StrPrm
              | PrmPrm
              | CloPrm
              | BndPrm
              | TupPrm
              | LstPrm
  deriving (Eq, Ord)

genHKeys ''PyPrmKey

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
                 Domain.Boo   (Assoc ReaKey m) ~ Assoc BlnKey m,
                 RealDomain   (Assoc ReaKey m),
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

constant :: PyConstant -> PyVal
constant = injectAdr . PrmAdr 

-- helper function 
injectObj :: (AllJoin m) => PyVal -> [(PyAttr, PyVal)] -> [BindingFrom (PyPrm m)] -> PyObj m
injectObj cls bds prm = PyObj (Domain.from dict) (HMapDomain.from prm)
  where attrs = (ClassAttr, cls) : bds
        dict  = map (first $ Constant . attrStr) attrs

injectObj' :: (AllJoin m) => PyConstant -> [(PyAttr, PyConstant)] -> [BindingFrom (PyPrm m)] -> PyObj m
injectObj' cls bds = injectObj (constant cls) (map (second constant) bds)

injectPrm :: (AllJoin m) => PyPrim -> PyObj m
injectPrm prm = injectObj' PrimType [] [SPrmPrm :&: Domain.inject prm]

injectStr :: (AllJoin m, StringDomain (Assoc StrKey m)) => String -> PyObj m
injectStr str = injectObj' StringType [] [SStrPrm :&: Domain.inject str]

injectBln :: (AllJoin m, BoolDomain (Assoc BlnKey m)) => Bool -> PyObj m
injectBln bln = injectObj' BoolType [] [SBlnPrm :&: Domain.inject bln]

injectNon :: AllJoin m => PyObj m
injectNon = injectObj' NoneType [] []

injectTyp' :: AllJoin m => PyConstant -> PyConstant -> [(PyAttr, PyConstant)] -> PyObj m
injectTyp' nam mro mts = injectObj' Type ((NameAttr, nam):(MROAttr, mro):mts) []

injectTup :: AllJoin m => [PyVal] -> PyObj m
injectTup vls = injectObj' TupleType [] [STupPrm :&: SeqDomain.fromList vls]

injectTup' :: AllJoin m => [PyConstant] -> PyObj m
injectTup' = injectTup . map constant

injectMRO :: AllJoin m => PyConstant -> PyObj m
injectMRO cls = injectTup' [cls, Object]

injectBnd :: AllJoin m => ObjAdr -> PyVal -> PyObj m
injectBnd self fun = injectObj' BoundType [] [SBndPrm :&: Map.singleton self fun]

class PyDomain m k where
  from :: Assoc k (PyPrm m) -> PyObj m 
instance AllJoin m => PyDomain m IntPrm where
  from num = injectObj' IntType [] [SIntPrm :&: num]
instance AllJoin m => PyDomain m ReaPrm where
  from num = injectObj' FloatType [] [SReaPrm :&: num]
instance AllJoin m => PyDomain m BlnPrm where
  from bln = injectObj' BoolType [] [SBlnPrm :&: bln]

injectPyConstant :: AllAbs m => PyConstant -> PyObj m
injectPyConstant Type       = injectObj' Type [] []
injectPyConstant Object     = injectObj' Type [] []
-- types
injectPyConstant IntType    = injectTyp' IntName IntMRO [(AddAttr, PrimIntAdd),
                                                         (SubAttr, PrimIntSub),
                                                         (MulAttr, PrimIntMul),
                                                         (TrueDivAttr, PrimIntTrueDiv)]
injectPyConstant FloatType  = injectTyp' FloatName FloatMRO [(AddAttr, PrimFloatAdd),
                                                             (SubAttr, PrimFloatSub),
                                                             (MulAttr, PrimFloatMul),
                                                             (TrueDivAttr, PrimFloatTrueDiv)]
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
injectPyConstant FloatName  = injectStr "float"
injectPyConstant BoolName   = injectStr "bool"
injectPyConstant StringName = injectStr "str"
injectPyConstant TupleName  = injectStr "tuple"
injectPyConstant PrimName   = injectStr "primitive"
injectPyConstant CloName    = injectStr "function"
injectPyConstant BoundName  = injectStr "bound function"
-- MROs
injectPyConstant NoneMRO    = injectMRO NoneType
injectPyConstant IntMRO     = injectMRO IntType
injectPyConstant FloatMRO   = injectMRO FloatType 
injectPyConstant BoolMRO    = injectMRO BoolType
injectPyConstant StringMRO  = injectMRO StringType
injectPyConstant TupleMRO   = injectMRO TupleType
injectPyConstant PrimMRO    = injectMRO PrimType
injectPyConstant CloMRO     = injectMRO CloType
injectPyConstant BoundMRO   = injectMRO BoundType
-- primitives 
injectPyConstant PrimIntAdd       = injectPrm IntAdd
injectPyConstant PrimIntSub       = injectPrm IntSub
injectPyConstant PrimIntMul       = injectPrm IntMul
injectPyConstant PrimIntTrueDiv   = injectPrm IntTrueDiv
injectPyConstant PrimFloatAdd     = injectPrm FloatAdd
injectPyConstant PrimFloatSub     = injectPrm FloatSub
injectPyConstant PrimFloatMul     = injectPrm FloatMul
injectPyConstant PrimFloatTrueDiv = injectPrm FloatTrueDiv
-- pre-allocated constant values
injectPyConstant True         = injectBln Prelude.True
injectPyConstant False        = injectBln Prelude.False
injectPyConstant None         = injectNon


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

callPrm :: (PyM pyM (PyObj m), AllAbs m) => PyExp -> [PyVal] -> Set PyPrim -> pyM PyVal 
callPrm pos ags = mJoinMap apply
  where apply prm = applyPrim prm pos ags 

callClo :: (PyM pyM (PyObj m), AllJoin m) => PyExp -> [PyVal] -> Set PyClo -> pyM PyVal 
callClo pos ags = mJoinMap apply
  where apply (prs, bdy, env) = undefined --TODO

intBinop :: forall r1 r2 i r pyM m . 
            (PyM pyM (PyObj m), 
             AllAbs m, 
             PyDomain m r1, 
             PyDomain m r2,
             i ~ Assoc IntKey m,
             r ~ Assoc ReaKey m)
          => (i -> i -> pyM (Assoc r1 (PyPrm m)))
          -> (r -> r -> pyM (Assoc r2 (PyPrm m)))
          -> PyObj m -> PyObj m -> pyM (PyObj m)
intBinop fi fr o1 o2 = condCP (return $ isFloatObj o2)
                              (do n1 <- getPrm @IntPrm o1   -- coerce to float if the second arg is a float
                                  r1 <- Domain.toReal n1
                                  r2 <- getPrm @ReaPrm o2
                                  from @_ @r2 <$> fr r1 r2)
                              (do n1 <- getPrm @IntPrm o1
                                  n2 <- getPrm @IntPrm o2
                                  from @_ @r1 <$> fi n1 n2)

intBinop' :: forall pyM m . (PyM pyM (PyObj m), AllAbs m) 
          => (forall d . NumberDomain d => d -> d -> pyM d) -- a common case: the same function (e.g., from NumberDomain)
          -> (PyObj m -> PyObj m -> pyM (PyObj m))
intBinop' f = intBinop @IntPrm @ReaPrm f f 

intBinop'' :: forall r pyM m . (PyM pyM (PyObj m), AllAbs m, PyDomain m r) 
          => (forall d . (NumberDomain d, Domain.Boo d ~ Assoc BlnKey m) => d -> d -> pyM (Assoc r (PyPrm m))) -- another common case
          -> (PyObj m -> PyObj m -> pyM (PyObj m))
intBinop'' f = intBinop @r @r f f 

floatBinop :: forall r pyM m . (PyM pyM (PyObj m), AllAbs m, PyDomain m r)
          => (Assoc ReaKey m -> Assoc ReaKey m -> pyM (Assoc r (PyPrm m)))
          -> PyObj m -> PyObj m -> pyM (PyObj m)
floatBinop f o1 o2 = condCP (return $ isIntObj o2)
                            (do r1 <- getPrm @ReaPrm o1
                                n2 <- getPrm @IntPrm o2
                                r2 <- Domain.toReal n2
                                from @_ @r <$> f r1 r2)
                            (do r1 <- getPrm @ReaPrm o1
                                r2 <- getPrm @ReaPrm o2
                                from @_ @r <$> f r1 r2)

applyPrim :: forall pyM m . (PyM pyM (PyObj m), AllAbs m) => PyPrim -> PyExp -> [PyVal] -> pyM PyVal
-- int primitives
applyPrim IntAdd        = prim2 $ intBinop' Domain.plus 
applyPrim IntSub        = prim2 $ intBinop' Domain.minus
applyPrim IntMul        = prim2 $ intBinop' Domain.times  
applyPrim IntTrueDiv    = prim2 $ intBinop @ReaPrm @ReaPrm intDiv Domain.div 
  where intDiv a b = Monad.join $ liftM2 Domain.div (Domain.toReal a) (Domain.toReal b)
applyPrim IntEq         = prim2 $ intBinop'' @BlnPrm Domain.eq
applyPrim IntNe         = prim2 $ intBinop'' @BlnPrm Domain.ne 
applyPrim IntLt         = prim2 $ intBinop'' @BlnPrm Domain.lt
applyPrim IntGt         = prim2 $ intBinop'' @BlnPrm Domain.gt
applyPrim IntLe         = prim2 $ intBinop'' @BlnPrm Domain.le
applyPrim IntGe         = prim2 $ intBinop'' @BlnPrm Domain.ge 
-- float primitives
applyPrim FloatAdd      = prim2 $ floatBinop @ReaPrm Domain.plus
applyPrim FloatSub      = prim2 $ floatBinop @ReaPrm Domain.minus
applyPrim FloatMul      = prim2 $ floatBinop @ReaPrm Domain.times
applyPrim FloatTrueDiv  = prim2 $ floatBinop @ReaPrm Domain.div    
applyPrim FloatEq       = prim2 $ floatBinop @BlnPrm Domain.eq 
applyPrim FloatNe       = prim2 $ floatBinop @BlnPrm Domain.ne
applyPrim FloatLt       = prim2 $ floatBinop @BlnPrm Domain.lt 
applyPrim FloatGt       = prim2 $ floatBinop @BlnPrm Domain.gt 
applyPrim FloatLe       = prim2 $ floatBinop @BlnPrm Domain.le
applyPrim FloatGe       = prim2 $ floatBinop @BlnPrm Domain.ge 

getPrm :: forall k m pyM . (PyM pyM (PyObj m), AllJoin m, SingI k) => PyObj m -> pyM (Assoc k (PyPrm m))
getPrm (PyObj _ prm) = HMap.withC_ @(AtKey1 JoinLattice (PyPrm m)) getField s
  where s = sing @k 
        getField :: JoinLattice (Assoc k (PyPrm m)) => pyM (Assoc k (PyPrm m))
        getField = condCP (return $ HMapDomain.member s prm)
                          (return $ fromJust $ HMapDomain.lookup s prm)
                          (escape WrongType)

prim0 :: forall r pyM m . (PyM pyM (PyObj m), PyDomain m r) => 
        pyM (Assoc r (PyPrm m))             -- ^ the primitive function
        -> (PyExp -> [PyVal] -> pyM PyVal)  -- ^ the resulting function   
prim0 f pos [] = allocObj pos . from @_ @r =<< f 
prim0 _ _   _  = escape ArityError 

prim1 :: forall a r pyM m . (PyM pyM (PyObj m), AllJoin m, PyDomain m r, SingI a) => 
        (Assoc a (PyPrm m) -> pyM (Assoc r (PyPrm m)))  -- ^ the primitive function
        -> (PyExp -> [PyVal] -> pyM PyVal)              -- ^ the resulting function 
prim1 f pos [a1] = allocObj pos . from @_ @r =<< f =<< getPrm @a =<< deref' a1
prim1 _ _   _    = escape ArityError  

prim2 :: forall pyM m . (PyM pyM (PyObj m)) => 
        (PyObj m -> PyObj m -> pyM (PyObj m))   -- ^ the primitive function
        -> (PyExp -> [PyVal] -> pyM PyVal)      -- ^ the resulting function 
prim2 f pos [a1, a2] = do o1 <- deref' a1
                          o2 <- deref' a2
                          r  <- f o1 o2
                          allocObj pos r 
prim2 _ _   _        = escape ArityError  

prim2' :: forall a1 a2 r pyM m . (PyM pyM (PyObj m), AllJoin m, PyDomain m r, SingI a1, SingI a2) => 
        (Assoc a1 (PyPrm m) -> Assoc a2 (PyPrm m) -> pyM (Assoc r (PyPrm m)))  -- ^ the primitive function
        -> (PyExp -> [PyVal] -> pyM PyVal)                                     -- ^ the resulting function 
prim2' f = prim2 $ \a b -> do va <- getPrm @a1 a
                              vb <- getPrm @a2 b
                              from @_ @r <$> f va vb


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