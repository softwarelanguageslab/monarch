{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE UndecidableInstances #-}
module Analysis.Python.Semantics.Taint where 

import Analysis.Python.Semantics.Class 
import Analysis.Python.Monad.Taint
import Analysis.Python.Monad.Class (PyM)

instance (PyM (PythonTaintAnalysisT m) obj vlu) => PySemantics (PythonTaintAnalysisT m) obj vlu where 
