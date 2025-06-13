{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE UndecidableInstances #-}
module Analysis.Python.Semantics.Characteristics where

import Analysis.Python.Semantics.Class
import Analysis.Python.Monad.Characteristics
import Analysis.Python.Monad.Class

import Control.Monad.Join (mjoinMap, cond)
import qualified Data.Map as Map
import Analysis.Python.Common
import Analysis.Monad.FunctionCharacteristics
import Domain.Python.Syntax
import Lattice (CP)
import Domain.Python.World
import Domain.Python.Objects.Class

instance (PyM (PythonCharacteristicsAnalysisT m) obj vlu, CharacteristicsM PyLoc m) => PySemantics (PythonCharacteristicsAnalysisT m) obj vlu where
    callBnd loc pos kwa = mjoinMap apply . Map.toList
        where apply (rcv, fns) = do pyDeref_ (\_ ob -> 
                                        cond @_ @(CP Bool) (return $ has @CloPrm ob) 
                                                           (mapM_ (`addReceiver` rcv) $ cloLoc ob)
                                                           (return ())) fns
                                    call loc (injectAdr rcv : pos) kwa fns