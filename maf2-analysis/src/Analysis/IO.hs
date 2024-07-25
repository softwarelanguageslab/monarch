{-# LANGUAGE FlexibleInstances #-}
-- | This module provides several implementations of an IO model
-- that can be used to provide an abstraction for IO operations in any 
-- support programming language.
module Analysis.IO(IOModel(..), IOVal(..), OutputIO(..), IOHandle(..), StatusIO, DirectionIO, emptyOutputIO) where

import Lattice hiding (Top)

import Data.Set (Set)
import qualified Data.Set as Set

-- | Class of IO models, a model `m` is parametrized by its handle type `h` and the type 
-- of values that can be written to that handle.
class (Lattice m) => IOModel m h v | m -> h, m -> v where
   -- | Write a value `v` to handle `h` and returns the updated world according to IO model `m`
   write :: m -> IOHandle h -> v -> Set m
   -- | Read a value `v` to handle `h` and returns the updated world together with the read value `v`. 
   -- The world may or may not be changed by reading a value from the handle, some models might 
   -- consume the values from the handle while others don't.
   read  :: m -> IOHandle h -> Set (m, IOVal v)
   -- | Opens a new IO handle based on the given value (which can represent a string of a file for example) 
   open :: m -> v -> Set (m, IOHandle h)
   -- | Closes an existing IO handle
   close :: m -> IOHandle h -> Set m
   -- | Returns `True` if the IO handle is opened
   isOpen :: m -> IOHandle h -> Bool
   -- | Returns `False` if the IO handle is closed
   isClosed :: m -> IOHandle h -> Bool
   -- | Handle to standard output
   hstdout :: m -> IOHandle h

-- | A value coming from an IO operation
data IOVal a = Val a | Top

-- | A handle obtained from `open` 
data IOHandle a = IOHandle a | TopHandle

-- | Direction of an IO handle
data ConcreteDirectionIO  = In | Out
-- | Abstract of the direction of an IO handle
type DirectionIO = Set ConcreteDirectionIO 

-- | Status of an IO handle (open or closed)
data ConcreteStatusIO = Open | Closed
-- | Abstraction for the status of an IO handle
type StatusIO = Set ConcreteStatusIO

-- | An IO model that does only keep track of the possible output, and returns "top" for any read
newtype OutputIO v = OutputIO { output :: Set v } deriving (Eq, Show)
instance (Ord v) => IOModel (OutputIO v) v v where
   write (OutputIO out) _ v = Set.singleton (OutputIO (Set.union (Set.singleton v) out))
   read m _ = Set.singleton (m, Top)
   open m _ = Set.singleton (m, TopHandle)
   close m _ = Set.singleton m
   isOpen _ _ = True -- ^ Due to abstraction all IO handles are simultaniously opened and closed
   isClosed _ _ = True
   hstdout _ = TopHandle

-- | Create an empty instance of `OutputIO` 
emptyOutputIO :: OutputIO v 
emptyOutputIO = OutputIO Set.empty

-- | Two instances of the worlds represented by the IO model can be joined together
instance (Ord v) => Joinable (OutputIO v) where
   join (OutputIO v1) (OutputIO v2) = OutputIO $ join v1 v2

-- | We can check whether one world subsumes another
instance BottomLattice (OutputIO v) where
   bottom = OutputIO Set.empty

