module Analysis.Partition (Partition(..)) where

class Partition e where
  -- | Integrate the first argument into the existing partition
  -- denoted by the second argument.
  integrate :: e -> e -> e
  -- | Create an empty partition e
  empty :: e

-- | The trivial unit partition
instance Partition () where
  integrate = const id
  empty = ()
