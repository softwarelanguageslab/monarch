{-# OPTIONS_GHC -Wno-orphans #-}
-- | Convience function that re-exports some key modules
module Syntax.Python (module Syntax.Python.Compiler, module Syntax.Python.AST, module Syntax.Python.Parser) where

import Syntax.Python.Compiler
import Syntax.Python.AST
import Language.Python.Common.PrettyAST()
import Syntax.Python.Parser
import GHC.Generics
import Data.Hashable

deriving instance Generic (Ident a)
instance (Hashable a) => Hashable (Ident a)
instance Hashable SrcSpan where
   -- TODO: this is a hack, and should be fixed properly
   hashWithSalt _ a = 1

instance (Hashable a) => Hashable (Ide a)
