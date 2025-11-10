{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE UndecidableInstances #-}
module Analysis.Python.Semantics.TaintTracked where 

import Analysis.Python.Semantics.Class 
import Analysis.Python.Monad.TaintTracked
import Analysis.Python.Monad.Class (PyM)
import Syntax.Python.AST (Stmt(..))
import Analysis.Python.Common (constant)
import Domain.Python.World (PyConstant(..), PyPrim (..))

instance (PyM (PythonTaintAnalysisT m) obj vlu) => PySemantics (PythonTaintAnalysisT m) obj vlu where
    execDec _            stm            = exec stm 
