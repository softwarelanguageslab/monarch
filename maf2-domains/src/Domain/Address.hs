module Domain.Address(Address, AddressWithCtx(..)) where

-- | An address is an abstraction for a memory location on which a heap-allocated address resides
type Address a = (Show a, Eq a, Ord a)

-- | An address (or value containing addresses) with a context,
-- this type class provides functions for manipulating contexts
-- in those values.
class AddressWithCtx ctx adr where
  -- | Replace the context of the given address
  replaceCtx :: ctx -> adr -> adr
