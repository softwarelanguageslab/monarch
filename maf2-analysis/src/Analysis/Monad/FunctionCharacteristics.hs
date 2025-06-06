-- {-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE RecordWildCards #-}
module Analysis.Monad.FunctionCharacteristics where 

import qualified Data.Set as Set

import Analysis.Monad.Map ( MapM(put, get) )
import Data.Maybe (fromJust)
import Syntax.Python (PyLoc)
import Analysis.Python.Common (ObjAddrSet, emptyObjAddrSet, insertObjAddr, ObjAdr)
    
data CharacteristicsMap = CharacteristicsMap { callSites :: Set.Set PyLoc, -- number of call sites that invoke the function
                                               equivCallSites :: Set.Set PyLoc, -- number of equivalence classes of call sites that invoke the function
                                               allUses :: Set.Set PyLoc, -- number of uses of the this object and all parameters in the function
                                               receivers :: ObjAddrSet, -- number of abstract receiver objects from all call sites that invoke the function
                                               thisUses :: Set.Set PyLoc, -- number of uses of the this object in the function 
                                               parameterObjects :: ObjAddrSet, -- the total number of abstract objects to which the 1st parameter may point from all call sites that invoke the function
                                               parameterUses :: Set.Set PyLoc -- the total number of uses of the 1st parameter of a function (merge of FC7 and FC8 of the paper)
                                               } deriving (Eq, Ord, Show)


emptyCharacteristicsMap :: CharacteristicsMap
emptyCharacteristicsMap = CharacteristicsMap { callSites = Set.empty,
                                               equivCallSites = Set.empty,
                                               allUses = Set.empty,
                                               receivers = emptyObjAddrSet,
                                               thisUses = Set.empty,
                                               parameterObjects = emptyObjAddrSet,
                                               parameterUses = Set.empty }

class (Monad m) => CharacteristicsM k m where 
    newFunction :: k -> m ()
    getCharacteristics :: k -> m CharacteristicsMap
    updateCharacteristics :: k -> CharacteristicsMap -> m ()
    modifyCharacteristics :: k -> (CharacteristicsMap -> m CharacteristicsMap) -> m ()
    modifyCharacteristics k f = do  m <- getCharacteristics k
                                    newM <- f m
                                    updateCharacteristics k newM

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

instance {-# OVERLAPPING #-} (Monad m, MapM k CharacteristicsMap m, Ord k) => CharacteristicsM k m where 
    newFunction f = put f emptyCharacteristicsMap
    getCharacteristics k = do 
        m <- get @k @CharacteristicsMap @m k
        return $ fromJust m
    updateCharacteristics = put

