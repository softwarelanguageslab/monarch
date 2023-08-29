module Data.TypeLevel.Struct(Select(..)) where

-- Selects a field of the given type in the given structure
class Select s t where 
   select :: s -> t
