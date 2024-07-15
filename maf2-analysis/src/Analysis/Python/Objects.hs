{-# LANGUAGE GADTs                    #-}
{-# LANGUAGE FlexibleInstances        #-}
{-# LANGUAGE UndecidableInstances     #-}
{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE PolyKinds                #-}
{-# LANGUAGE AllowAmbiguousTypes      #-}
{-# LANGUAGE RankNTypes               #-}
{-# LANGUAGE ConstraintKinds          #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}

module Analysis.Python.Objects where

import Domain.Python.Syntax hiding (Dict)
import Analysis.Python.Common 
import Analysis.Python.Monad 
import qualified Domain.Core.SeqDomain as SeqDomain
import Domain.Core.SeqDomain (CPList(..))
import Control.Monad.Join
import Control.Monad.DomainError ( orElse, escape )
import Domain (Domain, BoolDomain)
import qualified Domain
import Domain.Python.Objects 
import Domain.Python.World 
import Data.Finite
import qualified Analysis.Environment as Env

import Prelude hiding (lookup, exp, True, False, seq, length, all)
import qualified Prelude
import qualified Data.Map as Map
import Data.Singletons (SingI(..))
import Control.Monad ((<=<), (>=>))
import Data.Bifunctor
import Control.Applicative (Applicative(liftA2))
import Analysis.Monad
import Data.Map (Map)
import Control.Monad.AbstractM (AbstractM)
import Lattice (join)
import Lattice (eql)

-- | Convenience function to construct a Python object immediately from primitive abstract value
from :: forall (k :: PyPrmKey) obj . (PyObj' obj, SingI k) => Abs obj k -> obj 
from v = set @k v (new cls)
  where cls = constant $ TypeObject $ classFor $ sing @k 

-- | Convenience function to construct a Python object immediately from primitive concrete value
from' :: forall (k :: PyPrmKey) obj v . (PyObj' obj, Domain (Abs obj k) v, SingI k) => v -> obj 
from' = from @k . Domain.inject  

--
-- Python constants 
--

initialEnv :: Map String ObjAdr
initialEnv = Map.empty  

init :: (PyObj' obj, StoreM m ObjAdr obj) => m ()
init = mapM_ initConstant (all :: [PyConstant])  

initConstant :: (StoreM m ObjAdr obj, PyObj' obj) => PyConstant -> m ()
initConstant c = writeAdr (allocCst c) (injectPyConstant c)

typeVal :: PyType -> PyVal
typeVal = constant . TypeObject

new' :: PyObj' obj => PyType -> obj 
new' = new . typeVal

initialCst :: [(String, PyConstant)]
initialCst = [("type",  TypeObject TypeType),
              ("Exception", TypeObject ExceptionType),
              ("True",  True),
              ("False", False),
              ("None",  None)]

injectPyConstant :: PyObj' obj => PyConstant -> obj
injectPyConstant True             = from' @BlnPrm Prelude.True
injectPyConstant False            = from' @BlnPrm Prelude.False
injectPyConstant None             = new' NoneType
injectPyConstant GlobalFrame      = setAttrs initialBds $ new' FrameType
  where initialBds = map (second constant) initialCst 
injectPyConstant (TypeName typ)   = from' @StrPrm (name typ)
injectPyConstant (PrimObject prm) = from' @PrmPrm prm
injectPyConstant (TypeMRO typ)    = from  @TupPrm (SeqDomain.fromList $ map typeVal mro)
  where mro = case typ of
                ObjectType  -> [ObjectType]
                _           -> [typ, ObjectType]
injectPyConstant (TypeObject typ) = setAttrs allAttrs $ new' TypeType 
  where typeAttrs   = [(NameAttr, TypeName typ), (MROAttr, TypeMRO typ)]
        methodAttrs = map (second PrimObject) (methods typ)
        allAttrs    = map (bimap attrStr constant) (typeAttrs ++ methodAttrs)
                      
isBindable :: (BoolDomain b, PyM pyM obj) => Ref obj -> pyM b
isBindable = fmap isBindableObj . pyDeref'

isBindableObj :: (BoolDomain b, PyObj obj) => obj -> b
isBindableObj = liftA2 Domain.or (has @PrmPrm) (has @CloPrm)

lookupAttr :: PyM pyM obj => PyLoc -> String -> Ref obj -> pyM (Ref obj)
lookupAttr loc attr =
  pyDeref $ \adr obj ->
              condCP  (return $ hasAttr attr obj)
                      (return $ getAttr attr obj)
                      -- if not found locally => look in the class
                      (do cls <- atAttr (attrStr ClassAttr) obj
                          lookupAttrInClass loc attr adr cls)

lookupAttrInClass :: PyM pyM obj => PyLoc -> String -> ObjAdr -> Ref obj -> pyM (Ref obj)
lookupAttrInClass loc attr self cls = do vlu <- lookupAttrMRO attr cls
                                         condCP (isBindable vlu)
                                                (bind vlu)
                                                (return vlu)
  where bind value = pyAlloc loc $ from @BndPrm $ Map.singleton self value

lookupAttrMRO :: PyM pyM obj => String -> Ref obj -> pyM (Ref obj)
lookupAttrMRO attr =
   pyDeref $ \_ cls ->
              do  mro <- atAttr (attrStr MROAttr) cls
                  tup <- pyDeref' mro >>= at @TupPrm  
                  case tup of
                    BotList       -> escape InvalidMRO
                    CPList l _ _  -> lookupMRO l
                    TopList v     -> lookupLocal v `orElse` escape AttributeNotFound
     where lookupLocal = atAttr attr <=< pyDeref'
           lookupMRO   = foldr (orElse . lookupLocal) (escape AttributeNotFound)

computeMRO :: PyM pyM obj => PyLoc -> Ref obj -> Ref obj -> pyM (Ref obj) 
computeMRO loc cls sup = do tup <- pyDeref' sup >>= at @TupPrm
                            mro <- case tup of
                                  BotList           -> escape InvalidMRO
                                  CPList [] _ _     -> return $ SeqDomain.fromList [cls, typeVal ObjectType]  -- no parent given (implicitly extends object)
                                  CPList [par] _ _  -> SeqDomain.insertFront cls <$> getMRO par               -- single parent
                                  _                 -> error "multiple inheritance is not yet supported"      -- multiple parents
                            pyAlloc loc $ from @TupPrm mro
  where getMRO = pyDeref' >=> atAttr (attrStr MROAttr) >=> pyDeref' >=> at @TupPrm

-- --

assignAttr :: PyM pyM obj => String -> Ref obj -> Ref obj -> pyM ()
assignAttr attr vlu = mjoinMap (assignAttrAt attr vlu) . addrs

assignAttrAt :: PyM pyM obj => String -> Ref obj -> Adr obj -> pyM ()
assignAttrAt attr vlu = updateWith (setAttr attr vlu) (setAttrWeak attr vlu)

-- --

isInstanceOf :: (PyM pyM obj, BoolDomain b) => PyVal -> PyVal -> pyM b
isInstanceOf obj cls = pyDeref' obj >>= atAttr (attrStr ClassAttr) >>= inMRO cls 

inMRO :: (PyM pyM obj, BoolDomain b) => PyVal -> PyVal -> pyM b
inMRO cls1 cls2 = do clsObj <- pyDeref' cls2
                     mroVal <- atAttr (attrStr MROAttr) clsObj 
                     mroObj <- pyDeref' mroVal
                     mroTup <- at @TupPrm mroObj
                     anyCPList mroTup (clsEq cls1)

-- TODO: this assumes that class name equality implies class equality! (not necessarily true in Python...)
clsEq :: (PyM pyM obj, BoolDomain b) => PyVal -> PyVal -> pyM b 
clsEq cls1 cls2 = do nam1 <- getClassName cls1 
                     nam2 <- getClassName cls2 
                     return $ eql nam1 nam2 
   where getClassName = pyDeref' >=> atAttr (attrStr NameAttr) >=> pyDeref' >=> at @StrPrm  


-- TODO: move to Domain package

anyCPList :: (AbstractM m, BoolDomain b) => SeqDomain.CPList v -> (v -> m b) -> m b 
anyCPList SeqDomain.BotList _ = mzero
anyCPList (SeqDomain.CPList l _ _) p = go l
   where go []     = return Domain.false
         go (x:xs) = cond (p x)
                          (return Domain.true)
                          (go xs)
anyCPList (SeqDomain.TopList v) p = (Domain.false `join`) <$> p v 