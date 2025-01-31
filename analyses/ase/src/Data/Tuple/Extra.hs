{-# LANGUAGE TypeOperators, PatternSynonyms #-}
module Data.Tuple.Extra where

-- | Left-associative binary operator for the (,) function
(<+>) :: a -> b -> (a, b)
(<+>) = (,)
infixl 6 <+>

-- | Define the same operator on a type level
type (<+>) a b = (,) a b

-- | ... and define the same operator as a pattern
pattern (::*::) a b = (,) a b
