class DataFrameDomain d where

    type Row d :: Type
    type Col d :: Type 

    create :: String -> d 