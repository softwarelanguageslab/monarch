{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE UndecidableInstances #-}
module Analysis.Python.Semantics.Characteristics where 

import Analysis.Python.Semantics.Class 
import Analysis.Python.Monad.Characteristics
import Analysis.Python.Monad.Class (PyM)

instance (PyM (PythonCharacteristicsAnalysisT m) obj vlu) => PySemantics (PythonCharacteristicsAnalysisT m) obj vlu where 
