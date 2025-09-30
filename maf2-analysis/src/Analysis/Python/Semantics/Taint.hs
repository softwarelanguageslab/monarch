{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE UndecidableInstances #-}
module Analysis.Python.Semantics.Taint where 

import Analysis.Python.Semantics.Class 
import Analysis.Python.Monad.Taint
import Analysis.Python.Monad.Class (PyM)
import Syntax.Python.AST (Stmt(..))
import Analysis.Python.Common (constant)
import Domain.Python.World (PyConstant(..), PyPrim (..))

instance (PyM (PythonTaintAnalysisT m) obj vlu) => PySemantics (PythonTaintAnalysisT m) obj vlu where
    execDec "windowing"  (Assg _ lhs _) = assignTo lhs (constant $ PrimObject DataFrameWindowedPrim1)
    execDec "windowing2" (Assg _ lhs _) = assignTo lhs (constant $ PrimObject DataFrameWindowedPrim2)
    execDec "windowing3" (Assg _ lhs _) = assignTo lhs (constant $ PrimObject DataFrameWindowedPrim3)
    execDec _            stm            = exec stm 