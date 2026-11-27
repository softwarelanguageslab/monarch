{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}

-- | Abstraction of pandas DataFrames and Series.
--
-- A DataFrame is a collection of columns, each an abstract value (e.g., a
-- reference to a Series object). Columns are either named, together with
-- whether they are in the DataFrame, or covered by a single default value that
-- stands for all columns without a known name.
--
-- A Series is abstracted by a single abstract value (e.g., a reference) that
-- stands for all of its elements.
module Domain.Python.Objects.DataFrame (
   Series(..),
   DataFrame(..),
   defaultPresence,
   fromColumns,
   allColumns,
   lookupColumn,
   selectColumns,
   dropColumns,
   setColumn,
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
import Data.Maybe (mapMaybe)
import Lattice.PresenceLattice (Presence(..), presentValue, mayBeAbsent)
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
-- A DataFrame is a map with a default: a column whose name is a key of
-- 'namedColumns' is described only by its 'Presence' there, and every other
-- column by 'defaultColumn'. Operations that combine DataFrames (e.g., 'join')
-- therefore look up each name in both DataFrames with 'lookupColumn', which
-- falls back to 'defaultColumn'.
data DataFrame v = DataFrame {
   -- | Whether the rows of the DataFrame are independent of each other
   rowsIndependent :: CP Bool,
   -- | The columns whose name is known statically, and whether they are in the
   -- DataFrame. For a DataFrame loaded with @read_csv@, these are the columns
   -- listed in its @dtype@ argument, which are assumed to be in the file
   -- ('Present'). A column that is removed (e.g., with @drop@) is 'Absent'.
   namedColumns    :: Map String (Presence v),
   -- | The value of every column whose name is not a key of 'namedColumns'.
   -- Not every name is a column, so such a column may be in the DataFrame
   -- ('Value'), or there are no such columns ('Bottom'): see 'defaultPresence'.
   -- For a DataFrame loaded with @read_csv@, these are the columns of the file
   -- that its @dtype@ argument does not list.
   defaultColumn   :: BottomLifted v
} deriving (Eq, Ord, Show, Generic)

instance (NFData v) => NFData (DataFrame v)

-- | The presence of a column whose name is not a key of 'namedColumns'
defaultPresence :: BottomLifted v -> Presence v
defaultPresence (Value v) = MaybePresent v
defaultPresence Bottom    = Absent

-- | Construct a DataFrame from its named columns, which are all in the
-- DataFrame, and the value of all other columns
fromColumns :: CP Bool -> [(String, v)] -> BottomLifted v -> DataFrame v
fromColumns rows named = DataFrame rows (Map.fromList [ (name, Present v) | (name, v) <- named ])

-- | All values of the columns that may be in the DataFrame
allColumns :: DataFrame v -> [v]
allColumns (DataFrame _ named dflt) = mapMaybe presentValue (Map.elems named) ++ [ v | Value v <- [dflt] ]

-- | Whether the column with the given name is in the DataFrame, and its value.
-- An unknown name may be any of the columns, or no column at all ('Absent').
lookupColumn :: Joinable v => CP String -> DataFrame v -> Presence v
lookupColumn (Constant name) (DataFrame _ named dflt) = Map.findWithDefault (defaultPresence dflt) name named
lookupColumn Top (DataFrame _ named dflt)             = foldr join Absent (defaultPresence dflt : Map.elems named)

-- | A DataFrame with only the columns with the given names, each as present as
-- in the given DataFrame. An unknown name may select any column.
selectColumns :: Joinable v => [CP String] -> DataFrame v -> DataFrame v
selectColumns names df = DataFrame (rowsIndependent df) named dflt
   where named = Map.fromList [ (name, lookupColumn (Constant name) df) | Constant name <- names ]
         dflt | Top `elem` names = joinsBL (allColumns df)
              | otherwise        = Bottom

-- | A DataFrame without the columns with the given names. A column with a
-- known name is definitely removed ('Absent'), even if its name is not a key
-- of 'namedColumns' yet. An unknown name may remove any column, so a column
-- that was definitely in the DataFrame may not be anymore ('mayBeAbsent').
-- The columns described by 'defaultColumn' may already be absent, so it stays
-- the same.
dropColumns :: [CP String] -> DataFrame v -> DataFrame v
dropColumns names (DataFrame rows named dflt) = DataFrame rows (Map.union removed named') dflt
   where removed = Map.fromList [ (name, Absent) | Constant name <- names ]
         named' | Top `elem` names = Map.map mayBeAbsent named
                | otherwise        = named

-- | Sets the column with the given name to the given value, so the column is
-- definitely in the DataFrame afterwards. This is a strong update: it is up to
-- the store to join the updated DataFrame with the old one when the DataFrame
-- may stand for several DataFrames (e.g., 'updateAdr' on a 'CountingMap').
-- An unknown name may set any column (or add a new one), so every column is
-- joined with the given value instead.
setColumn :: Joinable v => CP String -> v -> DataFrame v -> DataFrame v
setColumn (Constant name) v (DataFrame rows named dflt) =
   DataFrame rows (Map.insert name (Present v) named) dflt
setColumn Top v (DataFrame rows named dflt) =
   DataFrame rows (Map.map (join (Present v)) named) (Value (BL.joinWithBL dflt v))

-- | A DataFrame without named columns, whose columns may contain any value from
-- the columns of the given DataFrames
collapse :: Joinable v => CP Bool -> [DataFrame v] -> DataFrame v
collapse rows dfs = DataFrame rows Map.empty (joinsBL (concatMap allColumns dfs))

------------------------------------------------------------
-- Lattice instances
------------------------------------------------------------

-- The named columns are joined name by name, but not with a plain join of the
-- maps (e.g., 'Map.unionWith'): that would treat a name that is a key in only
-- one of the maps as bottom, and keep its presence from the other map (e.g.,
-- 'Present'). In the DataFrame without the key, however, that column is
-- described by its 'defaultColumn' (i.e., 'MaybePresent' or 'Absent'), so each
-- name is looked up in both DataFrames with 'lookupColumn'.
instance Joinable v => Joinable (DataFrame v) where
   join df1@(DataFrame rows1 named1 dflt1) df2@(DataFrame rows2 named2 dflt2) =
      DataFrame (join rows1 rows2) named (join dflt1 dflt2)
      where named = Map.fromSet joinColumn (Set.union (Map.keysSet named1) (Map.keysSet named2))
            joinColumn name = join (lookupColumn (Constant name) df1) (lookupColumn (Constant name) df2)

-- Like 'join', compares the named columns name by name with 'lookupColumn'
instance (Joinable v, PartialOrder v) => PartialOrder (DataFrame v) where
   leq df1@(DataFrame rows1 named1 dflt1) df2@(DataFrame rows2 named2 dflt2) =
      leq rows1 rows2 && leq dflt1 dflt2 && all leqColumn (Set.union (Map.keysSet named1) (Map.keysSet named2))
      where leqColumn name = leq (lookupColumn (Constant name) df1) (lookupColumn (Constant name) df2)

instance (Ord adr, Trace adr v) => Trace adr (DataFrame v) where
   trace = foldMap trace . allColumns
