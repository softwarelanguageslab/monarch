{-# LANGUAGE ScopedTypeVariables #-}
-- | Infinite sequences of random values
module Data.Random(RandomSeq, initialSeq, takeSeq) where 

import RIO
import System.Random

-- | Infinite sequence of random program values
data RandomSeq = RandomSeq {
         -- | An infinite sequence of program values
         getSeq :: [Integer],
         -- | The number of random values produced so far
         seqSize :: Int,
         -- | Initial seed
         seed :: Int
      }

-- special instance of NFData to prevent computing the entire 
-- sequence since it is infinite.
instance NFData RandomSeq where  
   rnf = const ()

instance Show RandomSeq where
   show (RandomSeq _ size seed) = "<sequence of size " ++ show size ++ " with seed " ++ show seed ++ ">"
instance Eq RandomSeq where
   -- two sequences are equal if the values produced so far are the same 
   -- and they have the same seed.
   (==) (RandomSeq _ seed1 size1) (RandomSeq _ seed2 size2) =
      seed1 == seed2 && size1 == size2
instance Ord RandomSeq where
   (<=) (RandomSeq _ seed1 size1) (RandomSeq _ seed2 size2) =
      seed1 <= seed2 && size1 <= size2

infiniteSeq :: StdGen -> [Integer]
infiniteSeq g = nxt : infiniteSeq g'
   where (nxt, g') = genSeq g

-- | Create an infinite sequence of random values
initialSeq :: RandomSeq
initialSeq = RandomSeq (infiniteSeq (mkStdGen seed)) 0 seed
   where seed = 42

-- | Take a value from the random sequence
takeSeq :: RandomSeq -> (Integer, RandomSeq)
takeSeq s = let (v:s') = getSeq s
            in (v, RandomSeq s' (seqSize s + 1) (seed s))

-- | Choose a random value from the given list
choose :: [a] -> StdGen -> (a, StdGen)
choose vs g = let (idx, g') = uniformR (0, max-1) g in (vs !! idx, g')
   where max = length vs

-- | Generate a random integer
randomInteger :: StdGen -> (Integer, StdGen)
randomInteger g = let (i :: Int, g') = uniform g in (toInteger i, g')

-- | Generate a random program value
genSeq :: StdGen -> (Integer, StdGen)
genSeq g = (i, g') where (i, g') = randomInteger g



