{-# OPTIONS_GHC -Wno-orphans #-}
{-# LANGUAGE RecordWildCards #-}

-- | Convience function that re-exports some key modules
module Syntax.Python (
    module Syntax.Python.Compiler, 
    module Syntax.Python.AST, 
    module Syntax.Python.Parser
) where

import Syntax.Python.Compiler
import Syntax.Python.AST
import Language.Python.Common.PrettyAST ()
import Syntax.Python.Parser


import qualified Language.Python.Common.SrcLocation as Py
import Syntax.Span  (SpanOf(..), Span(..), Position(..))


instance SpanOf PyLoc where 
   spanOf (PyLoc span _) =
      case span of
            Py.SpanCoLinear {..} -> 
               Span span_filename
                     (Position span_row 
                               span_start_column)
                     (Position span_row
                               span_end_column)
            Py.SpanMultiLine {..} ->
               Span span_filename
                     (Position span_start_row
                               span_start_column)
                     (Position span_end_row
                               span_end_column)
            Py.SpanPoint {..} -> 
               let point = Position span_row span_column in
               Span span_filename point point
            Py.SpanEmpty ->
               Span "<unknown>" (Position 0 0) (Position (-1) (-1))

