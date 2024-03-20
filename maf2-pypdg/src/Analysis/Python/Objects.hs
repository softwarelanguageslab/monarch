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
import Data.TypeLevel.HMap (Assoc, AtKey1, ForAll(..),  (::->), (:->), BindingFrom)
import qualified Domain.Core.HMapDomain as HMapDomain
import Domain.Core.HMapDomain (HMapAbs)
import qualified Domain.Core.SeqDomain as SeqDomain
import Domain.Core.SeqDomain (CPList(..))
import Control.Monad.Join
import Control.Monad.DomainError ( orElse, MonadEscape(escape) )
import Domain (BoolDomain, IntDomain, RealDomain, StringDomain, CPDictionary)
import qualified Domain

import Prelude hiding (lookup, exp, True, False, seq, length, all)
import qualified Prelude
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Singletons (SingI(..), Sing)
import Data.Singletons.Sigma (Sigma((:&:)))
import Data.Kind
import Control.Monad ((<=<))
import Data.Bifunctor
import Data.Maybe (fromJust)

import Analysis.Python.Objects.Class 
import Control.Applicative (Applicative(liftA2))

--
-- Python constants 
--

init :: PyM pyM obj => pyM ()
init = mapM_ initConstant (all :: [PyConstant])  

initConstant :: PyM pyM obj => PyConstant -> pyM ()
initConstant c = extend (allocCst c) (injectPyConstant c)

injectPyConstant :: PyObj obj => PyConstant -> obj
injectPyConstant Type             = new (constant Type)  
injectPyConstant Object           = new (constant Type)
injectPyConstant True             = from' @BlnPrm Prelude.True
injectPyConstant False            = from' @BlnPrm Prelude.False
injectPyConstant None             = from' @NonPrm ()
injectPyConstant (TypeName typ)   = from' @StrPrm (name typ)
injectPyConstant (PrimObject prm) = from' @PrmPrm prm
injectPyConstant (TypeMRO typ)    = from  @TupPrm (SeqDomain.fromList $ map constant [TypeObject typ, Object])
injectPyConstant (TypeObject typ) = setAttrs allAttrs $ new (constant Type) 
  where typeAttrs = [(NameAttr, TypeName typ), (MROAttr, TypeMRO typ)]
        methodAttrs = map (second PrimObject) (methods typ)
        allAttrs    = map (bimap attrStr constant) (typeAttrs ++ methodAttrs)
                      

isBindable :: (BoolDomain b, PyM pyM obj) => PyVal -> pyM b
isBindable = fmap isBindableObj . pyDeref'

isBindableObj :: (BoolDomain b, PyObj obj) => obj -> b
isBindableObj = liftA2 Domain.or (has @PrmPrm) (has @CloPrm)

lookupAttr :: PyM pyM obj => PyLoc -> String -> PyVal -> pyM PyVal
lookupAttr loc attr =
  pyDeref $ \adr obj ->
              condCP  (return $ hasAttr attr obj)
                      (return $ getAttr attr obj)
                      -- if not found locally => look in the class
                      (do cls <- atAttr (attrStr ClassAttr) obj
                          lookupAttrInClass loc attr adr cls)

lookupAttrInClass :: PyM pyM obj => PyLoc -> String -> ObjAdr -> PyVal -> pyM PyVal
lookupAttrInClass loc attr self cls = do vlu <- lookupAttrMRO attr cls
                                         condCP (isBindable vlu)
                                                (bind vlu)
                                                (return vlu)
  where bind value = pyAlloc loc $ from @BndPrm (Map.singleton self value) 

lookupAttrMRO :: PyM pyM obj => String -> PyVal -> pyM PyVal
lookupAttrMRO attr =
   pyDeref $ \_ cls ->
              do  mroObj <- atAttr (attrStr MROAttr) cls
                  tupObj <- pyDeref' mroObj
                  mroTup <- at @TupPrm tupObj  
                  case mroTup of
                    BotList       -> escape InvalidMRO
                    CPList l _ _  -> lookupMRO l
                    TopList v     -> lookupLocal v `orElse` escape AttributeNotFound
     where lookupLocal = atAttr attr <=< pyDeref'
           lookupMRO   = foldr (orElse . lookupLocal) (escape AttributeNotFound)

-- --

assignAttr :: PyM pyM obj => String -> PyVal -> PyVal -> pyM ()
assignAttr attr vlu = mjoinMap updateAdr . addrs   -- TODO: support strong update
    where updateAdr adr = update adr (setAttr attr vlu) (setAttrWeak attr vlu) 