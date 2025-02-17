module Domain.Core.SeqDomain.CPList (CPList(..)) where 

import Lattice 
import Domain.Core.SeqDomain.Class 
import Control.Monad.AbstractM
import Control.Monad.DomainError
import Control.Monad.Escape hiding (Bottom)
import Control.Monad.Join hiding (fromBL)
import Domain.Core.NumberDomain.ConstantPropagation ()
import Lattice.BottomLiftedLattice (BottomLifted, joinsBL, fromBL, joinWithBL)
import qualified Lattice.BottomLiftedLattice as BL

-- | A simple abstraction (preserving precision for lists with a known length)
data CPList v = CPList [v] Integer (BottomLifted v)   -- representing a list of a certain known length
              | TopList v                             -- representing any list (summarized by the join of all its elements)
  deriving (Eq, Ord, Show)

-- some helpers

updateAt :: Int -> (v -> v) -> [v] -> [v]
updateAt _ _ []     = error "index out of range"
updateAt 0 f (x:xs) = f x : xs
updateAt n f (x:xs) = x : updateAt (n-1) f xs 

insertAt :: Int -> v -> [v] -> [v]
insertAt _ v []     = [v]
insertAt 0 v xs     = v : xs
insertAt n v (x:xs) = x : insertAt (n-1) v xs 

insertAnyWhere :: Joinable v => v -> [v] -> [v]
insertAnyWhere v [] = [v] 
insertAnyWhere v vs = join v <$> zipWith joinMaybe (Nothing : vs') (vs' ++ [Nothing])
  where vs' = map Just vs 
        joinMaybe Nothing  Nothing  = error "this will not happen" -- (due to first case of insertAnywhere)
        joinMaybe Nothing  (Just b) = b
        joinMaybe (Just a) Nothing  = a
        joinMaybe (Just a) (Just b) = join a b

anySublistOf :: Joinable v => [v] -> CPList v 
anySublistOf [] = CPList [] 0 BL.Bottom
anySublistOf l  = TopList (joins1 l)

sliceBetween :: Int -> Int -> [v] -> [v]
sliceBetween from to = take (to - from) . drop from

instance (Joinable v) => Joinable (CPList v) where
  join (CPList lst1 len1 vlu1) (CPList lst2 len2 vlu2)
    | len1 == len2 = CPList (zipWith join lst1 lst2) len1 (vlu1 `join` vlu2)
    | otherwise    = TopList (fromBL $ vlu1 `join` vlu2)  -- guaranteed to be non-bottom because lengths are different
                                                          -- hence one of both lengths is guaranteed to be > 0
  join (CPList _ _ vlu1) (TopList vlu2) = TopList (joinWithBL vlu1 vlu2)
  join (TopList vlu1) (CPList _ _ vlu2) = TopList (joinWithBL vlu2 vlu1) 
  join (TopList vlu1) (TopList vlu2)    = TopList (vlu1 `join` vlu2)

instance (Eq v, Joinable v) => SeqDomain (CPList v) where

  type Vlu (CPList v) = v 
  type Idx (CPList v) = CP Integer 

  fromList :: [v] -> CPList v 
  fromList lst = CPList lst (toInteger $ Prelude.length lst) (joinsBL lst) 

  ref :: AbstractM m => CP Integer -> CPList v -> m v 
  ref (Constant idx)  (CPList lst len _)
    | 0 <= idx && idx < len = return (lst !! fromInteger idx)
    | otherwise             = escape IndexOutOfBounds
  ref (Constant idx)  (TopList vlu)
    | idx < 0   = escape IndexOutOfBounds
    | otherwise = return vlu `mjoin` escape IndexOutOfBounds
  ref Top             (CPList _ _ BL.Bottom)      = escape IndexOutOfBounds
  ref Top             (CPList _ _ (BL.Value vlu)) = return vlu `mjoin` escape IndexOutOfBounds
  ref Top             (TopList vlu)               = return vlu `mjoin` escape IndexOutOfBounds

  setWeak :: AbstractM m => CP Integer -> v -> CPList v -> m (CPList v)
  setWeak (Constant idx) v (CPList lst len vlu) -- optimized implementation possible here
    | 0 <= idx && idx < len = return $ CPList lst' len (vlu `join` BL.Value v)
    | otherwise = escape IndexOutOfBounds
    where lst' = updateAt (fromInteger idx) (`join` v) lst
  setWeak (Constant idx) v (TopList vlu)
    | idx < 0   = escape IndexOutOfBounds
    | otherwise = return (TopList $ vlu `join` v) `mjoin` escape IndexOutOfBounds
  setWeak Top _ (CPList _ _ BL.Bottom) = escape IndexOutOfBounds                                 
  setWeak Top v (CPList lst len (BL.Value vlu)) = return updated `mjoin` escape IndexOutOfBounds  
    where updated = CPList (map (`join` v) lst) len (BL.Value $ vlu `join` v)  -- less precise alternative: TopList (vlu `join` v)
  setWeak Top v (TopList vlu) = return (TopList $ vlu `join` v) `mjoin` escape IndexOutOfBounds

  set :: AbstractM m => CP Integer -> v -> CPList v -> m (CPList v)
  set (Constant idx) v (CPList lst len _)                                       -- optimised (strong) update possible when index and length are constant 
    | 0 <= idx && idx < len = return (CPList lst' len vlu') 
    | otherwise = escape IndexOutOfBounds 
    where lst' = updateAt (fromInteger idx) (const v) lst
          vlu' = joinsBL lst' 
  set Top v (CPList [_] _ _) = return updated `mjoin` escape IndexOutOfBounds   -- optimised (strong) update possible when only one element in the list
    where updated = CPList [v] 1 (BL.Value v)
  set idx vlu lst = setWeak idx vlu lst                                         -- in all other cases: perform a weak update

  length (CPList _ len _) = return (Constant len)
  length (TopList _)      = return Top 

  -- not necessary but more efficient than the default implementation using slice
  tail :: AbstractM m => CPList v -> m (CPList v)
  tail (CPList [] _ _)      = escape IndexOutOfBounds
  tail (CPList (_:t) len _) = return $ CPList t (len-1) (joinsBL t)
  tail l@(TopList _)        = return l `mjoin` escape IndexOutOfBounds

  insert (Constant idx) v (CPList lst len vlu) = return $ CPList lst' (len + 1) (vlu `join` BL.Value v) 
    where lst' = insertAt (fromInteger idx) v lst 
  insert Top v (CPList lst len vlu) = return $ CPList (insertAnyWhere v lst) (len + 1) (vlu `join` BL.Value v)
  insert _   v (TopList vlu)        = return $ TopList (vlu `join` v)

  slice :: AbstractM m => CP Integer -> CP Integer -> CPList v -> m (CPList v)
  slice _ _ (CPList _ _ BL.Bottom) = escape IndexOutOfBounds 
  slice (Constant from) (Constant to) (CPList lst len _)
    | 0 <= from && from <= to && to <= len = return $ CPList lst' (to - from) (joinsBL lst') 
    | otherwise = escape IndexOutOfBounds
    where lst' = sliceBetween (fromInteger from) (fromInteger to) lst
  slice (Constant from) Top (CPList lst len _)
    | 0 <= from && from <= len = return (anySublistOf lst') `mjoin` escape IndexOutOfBounds
    | otherwise = escape IndexOutOfBounds
    where lst' = drop (fromInteger from) lst
  slice Top (Constant to) (CPList lst len _)
    | 0 <= to && to <= len = return (anySublistOf lst') `mjoin` escape IndexOutOfBounds 
    | otherwise = escape IndexOutOfBounds
    where lst' = take (fromInteger len - fromInteger to) lst
  slice Top Top (CPList _ _ (BL.Value vlu)) = return (TopList vlu) `mjoin` escape IndexOutOfBounds 
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



--
-- Alternative, more precise implementation where CPList does not need to have a known/constant length
--

-- data CPList v = BotList
--               | CPList [v] v (Interval Integer)
--               | TopList v (Interval Integer)
--   deriving (Eq) 

-- len :: CPList v -> Interval Integer 
-- len BotList         = bottom 
-- len (CPList _ _ l)  = l 
-- len (TopList _ l)   = l 



-- inRange :: (BoolDomain b) => Integer -> Interval Integer -> b
-- inRange idx len
--   | idx < 0 = Domain.false
--   | Interval (Bounded l) _ <- len, idx < l = Domain.true
--   | Interval _ (Bounded u) <- len, idx >= u = Domain.false 
--   | otherwise = Domain.boolTop

-- instance (Joinable v) => Joinable (CPList v) where
--   join BotList v = v
--   join (CPList seq1 vlu1 len1) (CPList seq2 vlu2 len2) = CPList (seq1 `joinLst` seq2) (vlu1 `join` vlu2) (len1 `join` len2) 
--     where joinLst [] s = s
--           joinLst s [] = s
--           joinLst (e1:r1) (e2:r2) = e1 `join` e2 : joinLst r1 r2 
--   join (CPList _ vlu1 len1) (TopList vlu2 len2) = TopList (vlu1 `join` vlu2) (len1 `join` len2)
--   join (TopList vlu1  len1) (TopList vlu2 len2) = TopList (vlu1 `join` vlu2) (len1 `join` len2)
--   join a b = join b a 

-- instance (JoinLattice v) => JoinLattice (CPList v) where
--   bottom = BotList 

-- instance (JoinLattice v) => SeqDomain (CPList v) where
  
--   type Vlu (CPList v) = v
--   type Idx (CPList v) = CP Integer 
  
--   fromList :: [v] -> CPList v
--   fromList lst = CPList lst (joins lst) (Domain.inject . toInteger $ Prelude.length lst)

--   ref :: AbstractM m => CP Integer -> CPList v -> m v 
--   ref Bottom          _                   = return bottom  
--   ref _               BotList             = return bottom 
--   ref (Constant idx)  (CPList lst _ len)  = guardIdx idx len $ return $ justOrBot (lst !? fromInteger idx)
--   ref (Constant idx)  (TopList vlu len)   = guardIdx idx len (return vlu) 
--   ref Top             (CPList _ vlu _)    = return vlu `mjoin` escape IndexOutOfBounds 
--   ref Top             (TopList vlu _)     = return vlu `mjoin` escape IndexOutOfBounds  

--   set :: AbstractM m => CP Integer -> v -> CPList v -> m (CPList v)
--   set idx vlu seq
--     | Bottom <- idx  = return BotList
--     | vlu == bottom  = return BotList
--     | BotList <- seq = return BotList   
--   set (Constant idx) v (CPList lst _ len) = guardIdx idx len (from <$> updateAt idx lst)
--     where updateAt _ []     = escape IndexOutOfBounds
--           updateAt 0 (_:xs) = return (v:xs)
--           updateAt n (x:xs) = (x:) <$> updateAt (n - 1) xs 
--           from lst = CPList lst (joins lst) len 
--   set Top v seq             = return (TopList (vlu seq `join` v) (len seq)) 
--                               `mjoin` 
--                               escape IndexOutOfBounds 
