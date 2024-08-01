{-# LANGUAGE TemplateHaskell #-}
module Syntax.Scheme.Actor where

import Data.FileEmbed

prelude :: String
prelude = $(makeRelativeToProject "preludes/actor.scm" >>= embedStringFile)
