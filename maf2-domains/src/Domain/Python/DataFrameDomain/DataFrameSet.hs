module Domain.Python.DataFrameDomain.DataFrameSet (DataFrameSet) where

import Lattice 
import Domain.Python.DataFrameDomain.Class 

import Data.Kind 

------------------------------------------------------------
--- A single dataframe 
------------------------------------------------------------

data DataFrame s r c = DataFrame { name :: s, 
                                   rows :: r, 
                                   cols :: c }
    deriving (Eq, Ord, Show)

type DFConstraint (tc :: Type -> Constraint) s r c = (tc s, tc r, tc c)

instance (DFConstraint Joinable s r c) => Joinable (DataFrame s r c) where
    join (DataFrame s1 r1 c1) (DataFrame s2 r2 c2) = 
        DataFrame (s1 `join` s2) (r1 `join` r2) (c1 `join` c2)

instance (DFConstraint Meetable s r c) => Meetable (DataFrame s r c) where
    meet (DataFrame s1 r1 c1) (DataFrame s2 r2 c2) = 
        DataFrame (s1 `meet` s2) (r1 `meet` r2) (c1 `meet` c2)

instance (DFConstraint JoinLattice s r c) => JoinLattice (DataFrame s r c) where
    bottom = DataFrame bottom bottom bottom
    subsumes df1 df2 = df1 `join` df2 == df1


------------------------------------------------------------
-- A set of dataframes 
------------------------------------------------------------

newtype DataFrameSet s r c = DataFrameSet [DataFrame s r c]
    deriving (Eq, Ord)

instance (DFConstraint JoinLattice s r c, DFConstraint Meetable s r c) 
        => 
        Joinable (DataFrameSet s r c) where
    join (DataFrameSet l1) (DataFrameSet l2) = DataFrameSet (join l1 l2)

instance (DFConstraint JoinLattice s r c, DFConstraint Eq s r c, DFConstraint Meetable s r c) 
        => 
        JoinLattice (DataFrameSet s r c) where
    bottom = DataFrameSet bottom
    subsumes (DataFrameSet l1) (DataFrameSet l2) = subsumes l1 l2
    
instance (DFConstraint JoinLattice s r c, DFConstraint Eq s r c, DFConstraint Meetable s r c) 
        => 
        DataFrameDomain (DataFrameSet s r c) where
    type Nam (DataFrameSet s r c) = s
    type Row (DataFrameSet s r c) = r 
    type Col (DataFrameSet s r c) = c
    create nam row col = DataFrameSet [DataFrame nam row col]