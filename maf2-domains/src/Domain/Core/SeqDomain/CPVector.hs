module Domain.Core.SeqDomain.CPVector (CPVector(..)) where 

import Lattice 
import Domain.Core.SeqDomain.Class 
import Control.Monad.AbstractM
import Control.Monad.DomainError
import Control.Monad.Join
import Control.Monad.Escape
import Domain.Core.NumberDomain.ConstantPropagation ()

import Data.Vector ( (!), Vector ) 
import qualified Data.Vector as Vec

-- | A simple abstraction (preserving precision for vectors with a known length)
data CPVector v = BotVec              -- representing no vectors
                | CPVec (Vector v) v  -- representing a vector of a certain known length
                | TopVec v            -- representing any vector (summarized by the join of all its elements)
  deriving (Eq)

instance (Joinable v) => Joinable (CPVector v) where
  join BotVec v = v
  join v BotVec = v 
  join (CPVec vec1 vlu1) (CPVec vec2 vlu2)
    | Vec.length vec1 == Vec.length vec2 = CPVec (Vec.zipWith join vec1 vec2) (vlu1 `join` vlu2)
    | otherwise = TopVec (vlu1 `join` vlu2)
  join (CPVec _ vlu1) (TopVec vlu2)  = TopVec (vlu1 `join` vlu2)
  join (TopVec vlu1)  (CPVec _ vlu2) = TopVec (vlu1 `join` vlu2)
  join (TopVec vlu1)  (TopVec vlu2)  = TopVec (vlu1 `join` vlu2)

instance (BottomLattice v) => BottomLattice (CPVector v) where
  bottom = BotVec 

instance Lattice v => SeqDomain (CPVector v) where

  type Vlu (CPVector v) = v 
  type Idx (CPVector v) = CP Integer

  fromList :: [v] -> CPVector v
  fromList lst = CPVec (Vec.fromList lst) (joins lst)

  ref :: AbstractM m => CP Integer -> CPVector v -> m v 
  ref Bottom          _             = return bottom  
  ref _               BotVec        = return bottom 
  ref (Constant idx)  (CPVec vec _)
    | 0 <= idx && idx < toInteger (Vec.length vec) = return (vec ! fromInteger idx)
    | otherwise                                    = escape IndexOutOfBounds
  ref (Constant idx)  (TopVec vlu)
    | idx < 0   = escape IndexOutOfBounds
    | otherwise = return vlu `mjoin` escape IndexOutOfBounds
  ref Top             (CPVec _ vlu)  = return vlu `mjoin` escape IndexOutOfBounds
  ref Top             (TopVec vlu)   = return vlu `mjoin` escape IndexOutOfBounds

  --- TODO: complete implementation ....
