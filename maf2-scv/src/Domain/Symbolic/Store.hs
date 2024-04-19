module Domain.Symbolic.Store(SymSto) where

import Data.Map (Map)
import Domain.Symbolic.Class

type SymSto a v = Map a (Symbolic v)
