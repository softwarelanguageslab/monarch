-- | Type classes for dealing with counted values
module Domain.Core.Count.Class(Count(..)) where

class Count c where
  -- | Increment the counter
  inc :: c -> c
  -- | Create a value of "one"
  one :: c
  -- | Create an infinite value for the counter
  infty :: c


