-- {-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE RecordWildCards #-}
module Analysis.Monad.FunctionCharacteristics where 


import Lattice 
import Control.Monad.State ( StateT, MonadState )
import qualified Control.Monad.State as State 
import Control.Monad.Trans.State (runStateT)
import Control.Monad.Layer (MonadLayer (..))
import Control.Monad.Trans (MonadTrans)
import Control.Monad.Join ( MonadJoinable )
import qualified Data.Map as Map
import qualified Data.Set as Set
import Domain (NumberDomain(plus))
import Control.Monad.AbstractM (AbstractM)

import Analysis.Monad.Map ( MapM(put, get) )
import Data.Maybe (fromJust)
import Syntax.Python (PyLoc)
import Analysis.Python.Common (ObjAddrSet, emptyObjAddrSet)

data Characteristic = CSNum      -- number of call sites that invoke the function
                    | EquivCSNum -- number of equivalence classes of call sites that invoke the function
                    | AllUse     -- number of uses of the this object and all parameters in the function
                    | RCNum      -- number of abstract receiver objects from all call sites that invoke the function
                    | ThisUse    -- number of uses of the this object in the function 
                    | Par1Num    -- the total number of abstract objects to which the 1st parameter may point from all call sites that invoke the function
                    | Par1Use    -- the total number of uses of the 1st parameter of a function (merge of FC7 and FC8 of the paper)
    deriving (Eq, Ord, Show)
    
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

numberOfCallSites :: CharacteristicsMap -> Int
numberOfCallSites CharacteristicsMap{..} = Set.size callSites 

class (Monad m) => CharacteristicsM k m where 
    newFunction :: k -> m ()
    getCharacteristics :: k -> m CharacteristicsMap
    updateCharacteristics :: k -> CharacteristicsMap -> m ()
    modifyCharacteristics :: k -> (CharacteristicsMap -> m CharacteristicsMap) -> m ()
    modifyCharacteristics k f = do  m <- getCharacteristics k
                                    newM <- f m
                                    updateCharacteristics k newM
                              
instance {-# OVERLAPPING #-} (Monad m, MapM k CharacteristicsMap m, Ord k) => CharacteristicsM k m where 
    newFunction f = put f emptyCharacteristicsMap
    getCharacteristics k = do 
        m <- get @k @CharacteristicsMap @m k
        return $ fromJust m
    updateCharacteristics = put

