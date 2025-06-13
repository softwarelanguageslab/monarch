{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE UndecidableInstances #-}
module Analysis.Python.Semantics.Characteristics where

import Lattice (CP)
import Control.Monad.Join (mjoinMap, cond)
import qualified Data.Map as Map
import Analysis.Monad.FunctionCharacteristics
import Analysis.Python.Common
import Analysis.Python.Semantics.Class
import Analysis.Python.Monad.Characteristics
import Analysis.Python.Monad.Class
import Domain.Python.Syntax
import Domain.Python.World
import Domain.Python.Objects
import Data.Maybe (listToMaybe)

instance (vlu ~ ObjAddrSet, PyM (PythonCharacteristicsAnalysisT m) obj vlu, CharacteristicsM PyLoc m) => PySemantics (PythonCharacteristicsAnalysisT m) obj vlu where
    callBnd loc pos kwa = mjoinMap apply . Map.toList
        where apply (rcv, fns) = do pyDeref_ (\_ ob -> 
                                        cond @_ @(CP Bool) (return $ has @CloPrm ob) 
                                                           (mapM_ (\f -> do addReceiver f rcv
                                                                            addCallSite f loc (objAddrSetFromList $ injectAdr rcv : pos) 
                                                                            mapM_ (addParameterObject f) (maybe [] objAddrSetToList $ listToMaybe pos))
                                                                  $ cloLoc ob)
                                                           (return ())) fns
                                    call loc (injectAdr rcv : pos) kwa fns