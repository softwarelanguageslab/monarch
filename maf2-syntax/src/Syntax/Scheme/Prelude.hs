{-# LANGUAGE TemplateHaskell #-}
module Syntax.Scheme.Prelude(addPrelude) where

import Data.FileEmbed

prelude :: String
prelude = $(makeRelativeToProject "preludes/scheme.scm" >>= embedStringFile)

addPrelude :: String -> String 
addPrelude = (prelude ++)