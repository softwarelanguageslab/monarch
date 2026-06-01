module Analysis.Config( 
        Tree(..),
        Or,
        module Analysis.Config.TH
    ) where

import Analysis.Config.TH

-- The idea is that an analysis can be configured by composing 
-- different datatypes together that each configure one member 
-- of the type family. This way, partial families can be composed 
-- to obtain a configuration of the entire analysis.
--
-- The 'Analysis.Config.TH' module allows generating configuration from data types
-- type families that can be used in constraints for configuring the analysis.
--
-- For instance the data type: 
-- data Config = CtxConfig Type
--
-- could be used to generate a "Ctx" type family which has instances for CtxConfig nodes.

import Data.Void

type family Or a b where 
    Or Void b = b
    Or a _    = a

data Tree a = Node (Tree a) (Tree a) | Leaf a

