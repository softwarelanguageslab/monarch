{-# LANGUAGE RecordWildCards #-}
module Syntax.Erlang.Preluder(preludeModules, preludeModule) where

import Syntax.Erlang.AST
import Syntax.Span
import Syntax.Ide
import GHC.Num
import qualified Data.Map as Map

------------------------------------------------------------
-- Shorthands
------------------------------------------------------------

-- | An import consisting of the module, name of the function and its arity
type Import = (String, String, Int)

------------------------------------------------------------
-- Utilities
------------------------------------------------------------

-- | Generates a synthetic AST location
noneSpan :: String -> Span
noneSpan moduleName = Span moduleName nonePosition nonePosition
  where nonePosition = Position (-1) (-1)

-- | Turn an import into an unqualified import from 'Syntax.Erlang.AST'
unqualifiedImport :: Import -> (ModuleName, FunctionIdentifier)
unqualifiedImport (modName, fnName, arity) =
    (Ide modName s, FunctionIdentifier fnName (integerFromInt arity) s)
  where s = noneSpan modName

------------------------------------------------------------
-- Preluding
------------------------------------------------------------

-- | Prelude a single module by adding the given imports as unqualified imports
preludeModule :: [Import] -> ModuleInfo -> ModuleInfo
preludeModule newImports modInfo@ModuleInfo { .. } =
    modInfo { unqualifiedImports = unqualifiedImports ++ unqualifiedImports' }
  where unqualifiedImports' = map unqualifiedImport newImports

-- | Prelude the given collection of modules by adding the given imports as unqualified imports
preludeModules :: [Import] -> Modules -> Modules
preludeModules imports = Modules . Map.map (preludeModule imports) . allModules

