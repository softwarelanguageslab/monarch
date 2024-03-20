{-# LANGUAGE TemplateHaskell #-}
module Syntax.Scheme.Actor where

import Data.FileEmbed

prelude :: String
prelude = $(embedStringFile "./preludes/actor.scm")
