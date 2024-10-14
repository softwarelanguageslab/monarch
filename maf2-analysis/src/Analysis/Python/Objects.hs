{-# LANGUAGE GADTs                    #-}
{-# LANGUAGE FlexibleInstances        #-}
{-# LANGUAGE UndecidableInstances     #-}
{-# LANGUAGE DataKinds                #-}
{-# LANGUAGE PolyKinds                #-}
{-# LANGUAGE AllowAmbiguousTypes      #-}
{-# LANGUAGE RankNTypes               #-}
{-# LANGUAGE ConstraintKinds          #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
{-# OPTIONS_GHC -Wno-missing-export-lists #-}
{-# LANGUAGE LambdaCase #-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

module Analysis.Python.Objects where

import Domain.Python.Syntax hiding (Dict, None)
import Analysis.Python.Common
import Analysis.Python.Monad
import qualified Domain.Core.SeqDomain as SeqDomain
import Domain.Core.SeqDomain (CPList(..))
import Control.Monad.Join
import Control.Monad.Escape ( orElse )
import Domain ( BoolDomain, BoolDomain(..) )
import Domain.Python.Objects
import Domain.Python.World
import Data.Finite

import Prelude hiding (lookup, exp, True, False, seq, length, all)
import qualified Prelude
import qualified Data.Map as Map
import Control.Monad ((>=>), (<=<))
import Data.Bifunctor
import Control.Applicative (Applicative(liftA2))
import Analysis.Monad hiding (has)
import Data.Map (Map)
import Lattice ( join, eql, CP )

--
-- Python constants 
--

initialEnv :: Map String ObjAdr
initialEnv = Map.empty

init :: (PyDomain obj vlu, StoreM ObjAdr obj m) => m ()
init = mapM_ initConstant (all :: [PyConstant])

initConstant :: (StoreM ObjAdr obj m, PyDomain obj vlu) => PyConstant -> m ()
initConstant c = writeAdr (allocCst c) (injectPyConstant c)

initialCst :: [(String, PyConstant)]
initialCst = map (\typ -> (name typ, TypeObject typ)) (all :: [PyType])

injectPyConstant :: PyDomain obj vlu => PyConstant -> obj
injectPyConstant True              = from' @BlnPrm Prelude.True
injectPyConstant False             = from' @BlnPrm Prelude.False
injectPyConstant None              = new' NoneType
injectPyConstant GlobalFrame       = new'' FrameType $ map (second constant) initialCst
injectPyConstant (TypeName typ)    = from' @StrPrm (name typ)
injectPyConstant (PrimObject prm)  = from' @PrmPrm @_ @(Either PyPrim XPyPrim) (Left prm)
injectPyConstant (XPrimObject prm) = from' @PrmPrm @_ @(Either PyPrim XPyPrim) (Right prm)
injectPyConstant (TypeMRO typ)     = from  @TupPrm (SeqDomain.fromList $ map typeVal mro)
  where mro = case typ of
                ObjectType  -> [ObjectType]
                StopIterationExceptionType -> [StopIterationExceptionType, ExceptionType, ObjectType]
                _           -> [typ, ObjectType]
injectPyConstant (TypeObject typ) = setAttrs allAttrs $ new' TypeType
  where typeAttrs        = [(NameAttr, TypeName typ), (MROAttr, TypeMRO typ)]
        methodAttrs      = map (second PrimObject) (methods typ)
        extraMethodAttrs = map (second XPrimObject) (extraMethods typ)
        allAttrs         = map (bimap attrStr constant) (typeAttrs ++ methodAttrs ++ extraMethodAttrs)

isBindableObj :: (BoolDomain b, PyObj obj) => obj -> b
isBindableObj = liftA2 Domain.or (has @PrmPrm) (has @CloPrm)

lookupAttr :: PyM pyM obj vlu => PyLoc -> String -> vlu -> pyM vlu
lookupAttr loc attr =
  pyDeref $ \adr obj ->
              condCP  (return $ hasAttr attr obj)
                      (return $ getAttr attr obj)
                      -- if not found locally => look in the class
                      (do cls <- atAttr (attrStr ClassAttr) obj
                          lookupAttrInClass loc attr adr cls)

lookupAttrInClass :: PyM pyM obj vlu => PyLoc -> String -> ObjAdr -> Ref obj -> pyM vlu
lookupAttrInClass loc attr self cls =
  do vlu <- lookupAttrMRO attr cls
     pyDeref' (\obj -> condCP (return $ isBindableObj obj)
                              (bind vlu)
                              (return vlu)) vlu
  where bind = pyStore loc . from @BndPrm . Map.singleton self

lookupAttrMRO :: PyM pyM obj vlu => String -> vlu -> pyM vlu
lookupAttrMRO attr =
   pyDeref' $ atAttr (attrStr MROAttr) >=> pyDeref' (at @TupPrm >=> \case
                                                                      CPList l _ _  -> lookupMRO l
                                                                      TopList v     -> lookupLocal v `orElse` pyError AttributeNotFound)
     where lookupLocal = pyDeref' (atAttr attr)
           lookupMRO   = foldr (orElse . lookupLocal) (pyError AttributeNotFound)

computeMRO :: forall pyM obj vlu . PyM pyM obj vlu => PyLoc -> vlu -> vlu -> pyM vlu
computeMRO loc cls = pyDeref' $ at @TupPrm
                                  >=> \case
                                        CPList [] _ _     -> pyStore loc $ from @TupPrm $ SeqDomain.fromList [cls, typeVal ObjectType]  -- no parent given (implicitly extends object)
                                        CPList [par] _ _  -> getMRO par (pyStore loc <=< return . from @TupPrm <=< SeqDomain.insertFront cls)        -- single parent
                                        _                 -> error "multiple inheritance is not yet supported"                          -- multiple parents
  where
      getMRO :: vlu -> (Abs obj TupPrm -> pyM vlu) -> pyM vlu
      getMRO v k = pyDeref' (atAttr (attrStr MROAttr) >=> pyDeref' (at @TupPrm >=> k)) v

-- --

-- assignAttr :: PyM pyM obj vlu => String -> vlu -> vlu -> pyM ()
-- assignAttr attr vlu = mjoinMap (assignAttrAt attr vlu) . addrs

-- assignAttrAt :: PyM pyM obj vlu => String -> vlu -> Adr obj -> pyM ()
-- assignAttrAt attr vlu = updateWith (setAttr attr vlu) (setAttrWeak attr vlu)

-- --

isInstanceOf :: PyM pyM obj vlu => vlu -> vlu -> pyM vlu
isInstanceOf = pyDeref2' (\obj cls -> atAttr (attrStr ClassAttr) obj >>= pyDeref' (inMRO cls))

inMRO :: PyM pyM obj vlu => obj -> obj -> pyM vlu
inMRO cls = atAttr (attrStr MROAttr) >=> pyDeref' (at @TupPrm >=> anyCPList (pyDeref' $ clsEq cls))

-- TODO: this assumes that class name equality implies class equality! (not necessarily true in Python...)
clsEq :: forall pyM obj vlu . PyM pyM obj vlu => obj -> obj -> pyM vlu
clsEq cls1 cls2 = getClassName cls1
                      $ \nam1 -> getClassName cls2
                        $ \nam2 -> return $ iff @(CP Bool) (eql nam1 nam2)
                                                           (constant True)
                                                           (constant False)
   where
      getClassName :: obj -> (Abs obj StrPrm -> pyM vlu) -> pyM vlu
      getClassName cls k = atAttr (attrStr NameAttr) cls >>= pyDeref' (at @StrPrm >=> k)


-- TODO: move to Domain package

anyCPList :: PyM pyM obj vlu => (vlu -> pyM vlu) -> SeqDomain.CPList vlu -> pyM vlu
anyCPList p (SeqDomain.CPList l _ _) = go l
   where go []     = return $ constant False
         go (x:xs) = pyIf (p x)
                          (return $ constant True)
                          (go xs)
anyCPList p (SeqDomain.TopList v) = join (constant True) <$> p v

-- varia

pyIf :: PyM m obj vlu => m vlu -> m vlu -> m vlu -> m vlu
pyIf prd csq alt = prd >>= pyDeref' (\obj -> cond (at @BlnPrm obj) csq alt)


pyIf_ :: PyM m obj vlu => m vlu -> m () -> m () -> m ()
pyIf_ prd csq alt = prd >>= pyDeref_ (\_ obj -> cond (at @BlnPrm obj) csq alt)
