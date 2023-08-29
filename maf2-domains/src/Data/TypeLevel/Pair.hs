{-# LANGUAGE PolyKinds #-}
module Data.TypeLevel.Pair(Fst, Snd, (:->), Associate) where 

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

-- | Associate a value for each of the given addresses
type family Associate vlu adrs where
   Associate vlu '[] = '[]
   Associate vlu (adr ': l) = ((adr :-> vlu adr) ': Associate vlu l)


