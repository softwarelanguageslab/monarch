-- {-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE RecordWildCards #-}
module Analysis.Monad.FunctionCharacteristics where

import qualified Data.Set as Set

import Data.Maybe (fromJust, listToMaybe, fromMaybe)
import Syntax.Python (PyLoc)
import Control.Monad.State ( StateT, MonadState )
import Analysis.Python.Common (ObjAddrSet, emptyObjAddrSet, insertObjAddr, ObjAdr)
import qualified Data.Map as Map

import Control.Monad.Trans
import Control.Monad.Layer

import qualified Control.Monad.State as State
import Data.Map ( Map )

import Control.Monad.Trans.State (runStateT)
import Control.Monad


data CharacteristicsMap = CharacteristicsMap {  callSites :: Map.Map PyLoc ObjAddrSet,  -- number of call sites that invoke the function (location and receiver+parameters)
                                                equivCallSites :: Set.Set PyLoc,        -- number of equivalence classes of call sites that invoke the function (i.e., call sites with unique receiver and parameters)
                                                allUses :: Set.Set PyLoc,               -- number of uses of the this (self) object and all parameters in the function
                                                receivers :: ObjAddrSet,                -- number of abstract receiver objects from all call sites that invoke the function
                                                thisUses :: Set.Set PyLoc,              -- number of uses of the this (self) object in the function 
                                                parameterObjects :: ObjAddrSet,         -- the total number of abstract objects to which the 1st parameter may point from all call sites that invoke the function
                                                parameterUses :: Set.Set PyLoc,         -- the total number of uses of the 1st parameter of a function (merge of FC7 and FC8 of the paper)

                                                parameters :: [String]                  -- the names of the parameters of the function
                                               } deriving (Eq, Ord, Show)


emptyCharacteristicsMap :: CharacteristicsMap
emptyCharacteristicsMap = CharacteristicsMap { callSites = Map.empty,
                                               equivCallSites = Set.empty,
                                               allUses = Set.empty,
                                               receivers = emptyObjAddrSet,
                                               thisUses = Set.empty,
                                               parameterObjects = emptyObjAddrSet,
                                               parameterUses = Set.empty,
                                               parameters = [] }

addCallSite :: (CharacteristicsM k m) => k -> PyLoc -> ObjAddrSet -> m ()
addCallSite k n p = modifyCharacteristics k (\m@CharacteristicsMap{..} ->
    do  let isNotEquiv = and $ Map.map (/= p) callSites
        let newEquivCallSites = if isNotEquiv then Set.insert n equivCallSites else equivCallSites -- add the call site to the equivalence classes only when the parameters and receiver are unique
        return m{callSites = Map.insert n p callSites, equivCallSites = newEquivCallSites})

addAllUse :: (CharacteristicsM k m) => k -> PyLoc -> m () -- this function only needs to be used for parameter uses that are not a first parameter
addAllUse k n = modifyCharacteristics k (\m@CharacteristicsMap{..} -> return m{allUses = Set.insert n allUses})

addReceiver :: (CharacteristicsM k m) => k -> ObjAdr -> m ()
addReceiver k n = modifyCharacteristics k (\m@CharacteristicsMap{..} -> return m{receivers = insertObjAddr n receivers})

addthisUse :: (CharacteristicsM k m) => k -> PyLoc -> m ()
addthisUse k n = modifyCharacteristics k (\m@CharacteristicsMap{..} -> return m{allUses = Set.insert n allUses, -- a thisUse is also automatically an allUse
                                                                                thisUses = Set.insert n thisUses})
addParameterObject :: (CharacteristicsM k m) => k -> ObjAdr -> m ()
addParameterObject k n = modifyCharacteristics k (\m@CharacteristicsMap{..} -> return m{parameterObjects = insertObjAddr n parameterObjects})

addParameterUse :: (CharacteristicsM k m) => k -> PyLoc -> m ()
addParameterUse k n = modifyCharacteristics k (\m@CharacteristicsMap{..} -> return m{allUses = Set.insert n allUses, -- a parameterUse is also automatically an allUse
                                                                                     parameterUses = Set.insert n parameterUses})

-- save the parameters of the function so that we can know when a parameter is used
setParameters :: (CharacteristicsM k m) => k -> [String] -> m ()
setParameters k ps = modifyCharacteristics k (\m -> return m{parameters = ps})
-- check if a variable name is a parameter of a function
isParameter :: (CharacteristicsM k m) => k -> String -> m Bool
isParameter k p = do m <- getCharacteristics k
                     return $ p `elem` maybe [] parameters m
-- helper to see what function this could be a parameter of (much better would be to know in what function we are...)
parameterOf :: (CharacteristicsM k m) => String -> m (Maybe k)
parameterOf s = do m <- getAllCharacteristics
                   let filteredM = filter (\(_, CharacteristicsMap{..}) -> s `elem` parameters) (Map.toList m)
                   return (fst <$> listToMaybe filteredM)


class (Monad m) => CharacteristicsM k m where
    newFunction :: k -> m ()
    getAllCharacteristics :: m (Map.Map k CharacteristicsMap)
    getCharacteristics :: k -> m (Maybe CharacteristicsMap)
    updateCharacteristics :: k -> CharacteristicsMap -> m ()
    modifyCharacteristics :: k -> (CharacteristicsMap -> m CharacteristicsMap) -> m ()
    modifyCharacteristics k f = do  m <- getCharacteristics k
                                    maybe (return ()) (f >=> updateCharacteristics k) m

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
    getCharacteristics = State.gets . Map.lookup
    updateCharacteristics f = State.modify . Map.insert f

runWithCharacteristics :: forall k m a . CharacteristicsT k m a -> m (a, Map k CharacteristicsMap)
runWithCharacteristics (CharacteristicsT m) = runStateT m Map.empty