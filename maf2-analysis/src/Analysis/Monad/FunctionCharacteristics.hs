-- {-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE RecordWildCards #-}
module Analysis.Monad.FunctionCharacteristics where

import qualified Data.Set as Set

import Data.Maybe (fromJust, listToMaybe)
import Syntax.Python (PyLoc)
import Control.Monad.State ( StateT, MonadState )
import Analysis.Python.Common (ObjAddrSet, emptyObjAddrSet, insertObjAddr, ObjAdr)
import qualified Data.Map as Map

import Control.Monad.Trans
import Control.Monad.Layer

import qualified Control.Monad.State as State
import Data.Map ( Map )

import Control.Monad.Trans.State (runStateT)



data CharacteristicsMap = CharacteristicsMap { callSites :: Set.Set PyLoc, -- number of call sites that invoke the function
                                               equivCallSites :: Set.Set PyLoc, -- number of equivalence classes of call sites that invoke the function (i.e., call sites with unique receiver and parameters)
                                               allUses :: Set.Set PyLoc, -- number of uses of the this object and all parameters in the function
                                               receivers :: ObjAddrSet, -- number of abstract receiver objects from all call sites that invoke the function
                                               thisUses :: Set.Set PyLoc, -- number of uses of the this object in the function 
                                               parameterObjects :: ObjAddrSet, -- the total number of abstract objects to which the 1st parameter may point from all call sites that invoke the function
                                               parameterUses :: Set.Set PyLoc, -- the total number of uses of the 1st parameter of a function (merge of FC7 and FC8 of the paper)

                                               parameters :: [String] -- the names of the parameters of the function
                                               } deriving (Eq, Ord, Show)


emptyCharacteristicsMap :: CharacteristicsMap
emptyCharacteristicsMap = CharacteristicsMap { callSites = Set.empty,
                                               equivCallSites = Set.empty,
                                               allUses = Set.empty,
                                               receivers = emptyObjAddrSet,
                                               thisUses = Set.empty,
                                               parameterObjects = emptyObjAddrSet,
                                               parameterUses = Set.empty,
                                               parameters = [] }

addCallSite :: (CharacteristicsM k m) => k -> PyLoc -> m ()
addCallSite k n = modifyCharacteristics k (\m@CharacteristicsMap{..} -> return m{callSites = Set.insert n callSites})

addEquivCallSite :: (CharacteristicsM k m) => k -> PyLoc -> m ()
addEquivCallSite k n = modifyCharacteristics k (\m@CharacteristicsMap{..} -> return m{equivCallSites = Set.insert n equivCallSites})

addAllUse :: (CharacteristicsM k m) => k -> PyLoc -> m ()
addAllUse k n = modifyCharacteristics k (\m@CharacteristicsMap{..} -> return m{allUses = Set.insert n allUses})

addReceiver :: (CharacteristicsM k m) => k -> ObjAdr -> m ()
addReceiver k n = modifyCharacteristics k (\m@CharacteristicsMap{..} -> return m{receivers = insertObjAddr n receivers})

addthisUse :: (CharacteristicsM k m) => k -> PyLoc -> m ()
addthisUse k n = modifyCharacteristics k (\m@CharacteristicsMap{..} -> return m{allUses = Set.insert n allUses, -- a thisUse is also automatically an allUse
                                                                                thisUses = Set.insert n thisUses})
addParameterObject :: (CharacteristicsM k m) => k -> ObjAdr -> m ()
addParameterObject k n = modifyCharacteristics k (\m@CharacteristicsMap{..} -> return m{parameterObjects = insertObjAddr n parameterObjects})

addParameterUse :: (CharacteristicsM k m) => k -> PyLoc -> m ()
addParameterUse k n = modifyCharacteristics k (\m@CharacteristicsMap{..} -> return m{parameterUses = Set.insert n parameterUses})

setParameters :: (CharacteristicsM k m) => k -> [String] -> m ()
setParameters k ps = modifyCharacteristics k (\m -> return m{parameters = ps})

parameterOf :: (CharacteristicsM k m) => String -> m (Maybe k)
parameterOf s = do m <- getAllCharacteristics
                   let filteredM = filter (\(_, CharacteristicsMap{..}) -> s `elem` parameters) (Map.toList m)
                   return (fst <$> listToMaybe filteredM)

class (Monad m) => CharacteristicsM k m where
    newFunction :: k -> m ()
    getAllCharacteristics :: m (Map.Map k CharacteristicsMap)
    getCharacteristics :: k -> m CharacteristicsMap
    updateCharacteristics :: k -> CharacteristicsMap -> m ()
    modifyCharacteristics :: k -> (CharacteristicsMap -> m CharacteristicsMap) -> m ()
    modifyCharacteristics k f = do  m <- getCharacteristics k
                                    newM <- f m
                                    updateCharacteristics k newM

instance (CharacteristicsM k m, Monad (t m), MonadLayer t) => CharacteristicsM k (t m) where
    newFunction = upperM . newFunction
    getAllCharacteristics = upperM getAllCharacteristics
    getCharacteristics = upperM . getCharacteristics
    updateCharacteristics k = upperM . updateCharacteristics k

newtype CharacteristicsT k m a = CharacteristicsT (StateT (Map.Map k CharacteristicsMap) m a)
  deriving (Functor, Applicative, Monad, MonadTrans, MonadLayer, MonadTransControl, MonadState (Map k CharacteristicsMap))

instance {-# OVERLAPPING #-} (Monad m, Ord k) => CharacteristicsM k (CharacteristicsT k m) where
    newFunction f = State.modify $ Map.insert f emptyCharacteristicsMap
    getAllCharacteristics = State.get
    getCharacteristics f = State.gets (fromJust . Map.lookup f)
    updateCharacteristics f = State.modify . Map.insert f

runWithCharacteristics :: forall k m a . CharacteristicsT k m a -> m (a, Map k CharacteristicsMap)
runWithCharacteristics (CharacteristicsT m) = runStateT m Map.empty