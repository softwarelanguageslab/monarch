module Domain.Python.DataFrameDomain.Class where

import Lattice 

import Data.Kind

class Lattice d => DataFrameDomain d where
    type Nam d :: Type
    type Row d :: Type
    type Col d :: Type 

    create :: Nam d -> Row d -> Col d -> d 
