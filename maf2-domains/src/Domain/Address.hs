module Domain.Address(Address) where

-- | An address is an abstraction for a memory location on which a heap-allocated address resides
type Address a = (Show a, Eq a, Ord a)

