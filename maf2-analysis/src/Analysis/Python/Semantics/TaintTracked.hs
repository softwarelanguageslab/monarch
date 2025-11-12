{-# LANGUAGE UndecidableInstances #-}
{-# OPTIONS_GHC -Wno-orphans #-}

module Analysis.Python.Semantics.TaintTracked where

import Analysis.Monad.Taint
import Analysis.Python.Common (constant)
import Analysis.Python.Monad.Class (PyM)
import Analysis.Python.Monad.TaintTracked
import Analysis.Python.Semantics.Class
import Domain.Python.World (PyConstant (..), PyPrim (..))
import Syntax.Python.AST (Stmt (..))
import Syntax.Span

instance (PyM (PythonTaintAnalysisT m) obj vlu, TaintM Taint m) => PySemantics (PythonTaintAnalysisT m) obj vlu where
  exec stm = withExecutionContext (spanOf stm) $ addExecutionContext $ exec' stm
  execDec _ = exec
