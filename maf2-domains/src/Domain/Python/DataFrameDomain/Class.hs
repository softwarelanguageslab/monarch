module Domain.Python.DataFrameDomain.Class where

import Lattice 

import Data.Kind

class JoinLattice d => DataFrameDomain d where
    type Nam d :: Type
    type Row d :: Type
    type Col d :: Type 

    create :: Nam d -> Row d -> Col d -> d 