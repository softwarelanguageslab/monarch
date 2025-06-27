module Domain.Python.DataFrameDomain.CPDataFrame where

import Lattice 

import Data.Kind 
import Data.Map (Map)
import Data.Set (Set)
import qualified Data.Map as Map
import Domain.Core.DictionaryDomain.CPDict (CPDictionary(..))
import qualified Domain.Core.DictionaryDomain as DctDomain 
import Lattice.TopLattice

------------------------------------------------------------
--- A single dataframe 
------------------------------------------------------------

data CPDataFrame d = CPDataFrame {  meas :: CP String,
                                   start :: d,
                                     end :: d,
                                    cols :: CPDictionary String Top }
    deriving (Eq, Ord, Show)

instance (Joinable d) => Joinable (CPDataFrame d) where
    join (CPDataFrame meas1 start1 end1 cols1) (CPDataFrame meas2 start2 end2 cols2) = 
        CPDataFrame (meas1  `join` meas2)
                    (start1 `join` start2)
                    (end1   `join` end2)
                    (cols1  `join` cols2)

------------------------------------------------------------
--- DataFrame taint  
------------------------------------------------------------

newtype DataFrameTaint = DataFrameTaint (ReversePowerSet String, Set String)
    deriving (Eq, Joinable, BottomLattice)



                                         