{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE UndecidableInstances #-}
module Analysis.Python.Semantics.Core where 

import Analysis.Python.Semantics.Class 
import Analysis.Python.Monad.Core
import Analysis.Python.Monad.Class (PyM)

instance (PyM (PythonAnalysisT m) obj vlu) => PySemantics (PythonAnalysisT m) obj vlu where 
