module Syntax.Python.Parser(parseFile, SrcSpan) where

import Language.Python.Version3.Parser
import Language.Python.Common.SrcLocation
import Language.Python.Common.AST

-- | Parses the contents of the given file
parseFile ::
      String -- ^ the name of the file 
   -> String -- ^ the contents of the file 
   -> Maybe ModuleSpan 
parseFile nam = either (const Nothing) (Just . fst) .  flip parseModule nam
