{-# LANGUAGE PolyKinds #-}
module Data.TypeLevel.Pair(Fst, Snd, (:->)) where 

import Data.Kind

--
-- Type-level pairs
--

type family Fst (x :: (a, b)) where
   Fst '(a, b) = a

type family Snd (x :: (a, b)) where
   Snd '(a, b) = b

-- | Pair constructor
type (:->) a b = '(a, b)
infix 1 :->
