-- | This library contains utilities for parsing and preprocessing Scheme
-- and Python code. For Scheme, a complete parser (with support with quasiquoting)
-- is provided in the module `Syntax.Scheme`. Currently, a single preprocessing 
-- step is included for elliminating `define` expressions from the program
-- and turning them into `letrec*` expressions. 
--
-- The Python parser leverages an existing Haskell library called `language-python`.
-- Unfortunately, this library returns a **parse tree** rather than an abstract syntax
-- tree which is harder to work with. Although this parser can be used and is exposed 
-- in the `Syntax.Python` module, we recommend to use our transformations to turn 
-- it into an abstract syntax tree. In addition of removing redundant parts of the 
-- parse tree, our transformations remove Pythonisms such as `nonlocal` and `global`.
-- These are translated into ordinary variables that are supposed to be lookup using 
-- lexical scoping rules. Additionally, our transformations remove the notion of classes,
-- using calls to the `type` constructor and assigning fields to them for defining methods
-- instead. Finally, our abstract syntax tree introduces support for multi-statement 
-- lambda's, therefore further simplifying the resulting AST. We call the this final
-- language μPython (where μ means 'micro', referring to its reduced complexity compared to a regular Python syntax tree). 
--
--
-- In this library, we provide functions `parsePython` and `parseScheme` for convience.
-- these functions parse and transform Python and Scheme respectively using the aforementioned 
-- transformations.
module Lib
    ( parsePython, parseScheme
    ) where

import qualified Syntax.Python as Python
import qualified Syntax.Scheme as Scheme

-- | Parse the given string as Python code
parsePython :: String -- ^ filename 
            -> String -- ^ file contents
            -> Maybe (Python.Program Python.SrcSpan Python.Micro)
parsePython = Python.parse

-- | Parse the given string as Scheme code
parseScheme :: String -- ^ the code as string
            -> Maybe Scheme.Exp 
parseScheme = Scheme.parseString
