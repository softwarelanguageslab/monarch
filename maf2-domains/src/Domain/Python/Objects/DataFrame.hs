{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

-- | Abstraction of pandas DataFrames and Series.
--
-- A DataFrame is a collection of columns, each an abstract value (e.g., a
-- reference to a Series object). Columns are either named, or covered by a
-- single value that stands for all columns without a known name.
--
-- A Series is abstracted by a single abstract value (e.g., a reference) that
-- stands for all of its elements.
module Domain.Python.Objects.DataFrame (
   Series(..),
   DataFrame(..),
   fromColumns,
   allColumns,
   lookupColumn,
   selectColumns,
   setColumnWeak,
   collapse
) where

import Lattice.Class
import Lattice.Trace (Trace(..))
import Lattice.ConstantPropagationLattice (CP(..))
import Lattice.BottomLiftedLattice (BottomLifted(..), joinsBL)
import qualified Lattice.BottomLiftedLattice as BL
import Data.Map (Map)
import qualified Data.Map as Map
import qualified Data.Set as Set
import GHC.Generics (Generic)
import Control.DeepSeq (NFData)

-- | An abstract Series
data Series v = Series {
   -- | Whether the rows of the Series are independent of each other
   seriesRowsIndependent :: CP Bool,
   -- | Stands for every element of the Series
   seriesElement         :: v
} deriving (Eq, Ord, Show, Generic)

instance (NFData v) => NFData (Series v)

instance Joinable v => Joinable (Series v) where
   join (Series rows1 el1) (Series rows2 el2) = Series (join rows1 rows2) (join el1 el2)

instance PartialOrder v => PartialOrder (Series v) where
   leq (Series rows1 el1) (Series rows2 el2) = leq rows1 rows2 && leq el1 el2

instance (Ord adr, Trace adr v) => Trace adr (Series v) where
   trace = trace . seriesElement

-- | An abstract DataFrame.
--
-- A column whose name is a key of 'namedColumns' is described only by its
-- value there; 'otherColumns' describes the remaining columns. Operations
-- that combine DataFrames (e.g., 'join') therefore look up each name in both
-- DataFrames with 'lookupColumn', which falls back to 'otherColumns'.
data DataFrame v = DataFrame {
   -- | Whether the rows of the DataFrame are independent of each other
   rowsIndependent :: CP Bool,
   -- | The columns whose name is known statically. For a DataFrame loaded with
   -- @read_csv@, these are the columns listed in its @dtype@ argument.
   namedColumns    :: Map String v,
   -- | The value of every column that is not in 'namedColumns' ('Bottom' if
   -- there are no such columns). For a DataFrame loaded with @read_csv@, these
   -- are the columns of the file that its @dtype@ argument does not list.
   otherColumns    :: BottomLifted v
} deriving (Eq, Ord, Show, Generic)

instance (NFData v) => NFData (DataFrame v)

-- | Construct a DataFrame from its named columns and the value of all other columns
fromColumns :: CP Bool -> [(String, v)] -> BottomLifted v -> DataFrame v
fromColumns rows named = DataFrame rows (Map.fromList named)

-- | All column values of the DataFrame
allColumns :: DataFrame v -> [v]
allColumns (DataFrame _ named other) = Map.elems named ++ [v | Value v <- [other]]

-- | The value of the column with the given name, or 'Bottom' if there is no such column
lookupColumn :: Joinable v => CP String -> DataFrame v -> BottomLifted v
lookupColumn (Constant name) (DataFrame _ named other) = maybe other Value (Map.lookup name named)
lookupColumn Top df = joinsBL (allColumns df)

-- | A DataFrame with only the columns with the given names.
-- An unknown name may select any column.
selectColumns :: Joinable v => [CP String] -> DataFrame v -> DataFrame v
selectColumns names df = DataFrame (rowsIndependent df) named other
   where named = Map.fromList [ (name, v) | Constant name <- names, Value v <- [lookupColumn (Constant name) df] ]
         other | Top `elem` names = joinsBL (allColumns df)
               | otherwise        = Bottom

-- | Updates the column with the given name by joining it with the given value
setColumnWeak :: Joinable v => CP String -> v -> DataFrame v -> DataFrame v
setColumnWeak (Constant name) v df@(DataFrame rows named other) =
   DataFrame rows (Map.insert name (BL.joinWithBL (lookupColumn (Constant name) df) v) named) other
setColumnWeak Top v (DataFrame rows named other) =
   DataFrame rows (Map.map (join v) named) (Value (BL.joinWithBL other v))

-- | A DataFrame without named columns, whose columns may contain any value from
-- the columns of the given DataFrames
collapse :: Joinable v => CP Bool -> [DataFrame v] -> DataFrame v
collapse rows dfs = DataFrame rows Map.empty (joinsBL (concatMap allColumns dfs))

------------------------------------------------------------
-- Lattice instances
------------------------------------------------------------

instance Joinable v => Joinable (DataFrame v) where
   join df1@(DataFrame rows1 named1 other1) df2@(DataFrame rows2 named2 other2) =
      DataFrame (join rows1 rows2) named (join other1 other2)
      where named = Map.fromSet joinColumn (Set.union (Map.keysSet named1) (Map.keysSet named2))
            joinColumn name = BL.fromBL (join (lookupColumn (Constant name) df1) (lookupColumn (Constant name) df2))

instance (Joinable v, PartialOrder v) => PartialOrder (DataFrame v) where
   leq df1@(DataFrame rows1 named1 other1) df2@(DataFrame rows2 named2 other2) =
      leq rows1 rows2 && leq other1 other2 && all leqColumn (Set.union (Map.keysSet named1) (Map.keysSet named2))
      where leqColumn name = leq (lookupColumn (Constant name) df1) (lookupColumn (Constant name) df2)

instance (Ord adr, Trace adr v) => Trace adr (DataFrame v) where
   trace = foldMap trace . allColumns
