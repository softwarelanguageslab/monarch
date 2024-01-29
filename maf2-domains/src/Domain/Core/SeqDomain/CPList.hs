module Domain.Core.SeqDomain.CPList (CPList) where 

import Lattice 
import Domain.Core.SeqDomain.Class 
import Control.Monad.AbstractM
import Control.Monad.DomainError
import Control.Monad.Join
import Domain.Core.NumberDomain.ConstantPropagation

-- | A simple abstraction (preserving precision for lists with a known length)
data CPList v = BotList                -- representing no lists
              | CPList [v] Integer v   -- representing a list of a certain known length
              | TopList v              -- representing any list (summarized by the join of all its elements)
  deriving (Eq)

-- some helpers

updateAt :: Int -> (v -> v) -> [v] -> [v]
updateAt _ _ []     = error "index out of range"
updateAt 0 f (x:xs) = f x : xs
updateAt n f (x:xs) = x : updateAt (n-1) f xs 

insertAt :: Int -> v -> [v] -> [v]
insertAt _ v []     = [v]
insertAt 0 v xs     = v : xs
insertAt n v (x:xs) = x : insertAt (n-1) v xs 

insertAnyWhere :: JoinLattice v => v -> [v] -> [v]
insertAnyWhere v vs = join v <$> zipWith join (bottom : vs) (vs ++ [bottom])

sliceBetween :: Int -> Int -> [v] -> [v]
sliceBetween from to = take (to - from) . drop from

instance (Joinable v) => Joinable (CPList v) where
  join BotList v = v
  join v BotList = v 
  join (CPList lst1 len1 vlu1) (CPList lst2 len2 vlu2)
    | len1 == len2 = CPList (zipWith join lst1 lst2) len1 (vlu1 `join` vlu2)
    | otherwise = TopList (vlu1 `join` vlu2)
  join (CPList _ _ vlu1) (TopList vlu2) = TopList (vlu1 `join` vlu2)
  join (TopList vlu1) (CPList _ _ vlu2) = TopList (vlu1 `join` vlu2) 
  join (TopList vlu1) (TopList vlu2)    = TopList (vlu1 `join` vlu2)

instance JoinLattice v => JoinLattice (CPList v) where
  bottom = BotList

instance JoinLattice v => SeqDomain (CPList v) where

  type Vlu (CPList v) = v 
  type Idx (CPList v) = CP Integer 

  fromList :: [v] -> CPList v 
  fromList lst = CPList lst (toInteger $ Prelude.length lst) (joins lst) 

  ref :: AbstractM m => CP Integer -> CPList v -> m v 
  ref Bottom          _       = return bottom  
  ref _               BotList = return bottom 
  ref (Constant idx)  (CPList lst len _)
    | 0 <= idx && idx < len = return (lst !! fromInteger idx)
    | otherwise             = escape IndexOutOfBounds
  ref (Constant idx)  (TopList vlu)
    | idx < 0   = escape IndexOutOfBounds
    | otherwise = return vlu `mjoin` escape IndexOutOfBounds
  ref Top             (CPList _ _ vlu)  = return vlu `mjoin` escape IndexOutOfBounds
  ref Top             (TopList vlu)     = return vlu `mjoin` escape IndexOutOfBounds

  set :: AbstractM m => CP Integer -> v -> CPList v -> m (CPList v)
  set Bottom _ _ = return BotList
  set _ v _      
    | v == bottom = return BotList
  set _ _ BotList = return BotList 
  set (Constant idx) v (CPList lst len _)
    | 0 <= idx && idx < len = return (CPList lst' len vlu') 
    | otherwise = escape IndexOutOfBounds 
    where lst' = updateAt (fromInteger idx) (const v) lst
          vlu' = joins lst' 
  set (Constant idx) v (TopList vlu)
    | idx < 0   = escape IndexOutOfBounds
    | otherwise = return (TopList $ vlu `join` v) `mjoin` escape IndexOutOfBounds
  set Top v (CPList lst len vlu) = return updated `mjoin` escape IndexOutOfBounds
    where updated = CPList (map (`join` v) lst) len (vlu `join` v)  -- alternative: TopList (vlu `join` v)
  set Top v (TopList vlu) = return (TopList $ vlu `join` v) `mjoin` escape IndexOutOfBounds

  setWeak :: AbstractM m => CP Integer -> v -> CPList v -> m (CPList v)
  setWeak Bottom _ l = return l
  setWeak _ v l     
    | v == bottom = return l
  setWeak _ _ BotList = return BotList 
  setWeak (Constant idx) v (CPList lst len vlu) -- optimized implementation possible here
    | 0 <= idx && idx < len = return $ CPList lst' len (vlu `join` v)
    | otherwise = escape IndexOutOfBounds
    where lst' = updateAt (fromInteger idx) (`join` v) lst
  setWeak idx v lst = set idx v lst             -- otherwise, same implementation as set

  length :: CPList v -> CP Integer
  length BotList          = Bottom
  length (CPList _ len _) = Constant len
  length (TopList _)      = Top 

  insert :: CP Integer -> v -> CPList v -> CPList v
  insert Bottom _ _ = BotList
  insert _ v _ 
    | v == bottom    = BotList
  insert _ _ BotList = BotList   
  insert (Constant idx) v (CPList lst len vlu) = CPList lst' (len + 1) (vlu `join` v) 
    where lst' = insertAt (fromInteger idx) v lst 
  insert Top v (CPList lst len vlu) = CPList (insertAnyWhere v lst) len (vlu `join` v)
  insert _   v (TopList vlu)    = TopList (vlu `join` v)

  slice :: AbstractM m => CP Integer -> CP Integer -> CPList v -> m (CPList v)
  slice Bottom _ _  = return BotList
  slice _ Bottom _  = return BotList
  slice _ _ BotList = return BotList 
  slice (Constant from) (Constant to) (CPList lst len _)
    | 0 <= from && from <= to && to < len = return $ CPList lst' (to - from) (joins lst')
    | otherwise = escape IndexOutOfBounds 
    where lst' = sliceBetween (fromInteger from) (fromInteger to) lst
  slice (Constant from) Top (CPList lst len _)
    | 0 <= from && from < len = return (TopList $ joins lst') `mjoin` escape IndexOutOfBounds
    | otherwise = escape IndexOutOfBounds
    where lst' = drop (fromInteger from) lst
  slice Top (Constant to) (CPList lst len _)
    | 0 <= to && to < len = return (TopList $ joins lst') `mjoin` escape IndexOutOfBounds 
    | otherwise = escape IndexOutOfBounds
    where lst' = take (fromInteger len - fromInteger to) lst
  slice Top Top (CPList _ _ vlu) = return (TopList vlu) `mjoin` escape IndexOutOfBounds 
  slice (Constant from) (Constant to) l@(TopList _)
    | 0 <= from && from <= to = return l `mjoin` escape IndexOutOfBounds
    | otherwise = escape IndexOutOfBounds 
  slice (Constant from) Top l@(TopList _)
    | 0 <= from = return l `mjoin` escape IndexOutOfBounds
    | otherwise = escape IndexOutOfBounds
  slice Top (Constant to) l@(TopList _)
    | 0 <= to = return l `mjoin` escape IndexOutOfBounds
    | otherwise = escape IndexOutOfBounds
  slice _ _ l@(TopList _) = return l `mjoin` escape IndexOutOfBounds