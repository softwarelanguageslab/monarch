{-# LANGUAGE UndecidableInstances, FlexibleContexts, ConstraintKinds #-}

module Domain.Python.DataFrame where 

import Data.Kind
import Domain.Lattice 

class JoinLattice d => DataFrameDomain d where
    type Row d :: Type
    type Col d :: Type 

    create :: String -> d 

-- Implementation
data DataFrame r c = DataFrame { name :: String, rows :: r, cols :: c }
    deriving (Eq, Show)

overlap :: (Eq r, Eq c, Meetable r, Meetable c, JoinLattice r, JoinLattice c) => DataFrame r c -> DataFrame r c -> Bool
overlap (DataFrame nam1 rows1 cols1) (DataFrame nam2 rows2 cols2) =
    nam1 == nam2 && rows1 `meet` rows2 /= bottom && cols1 `meet` cols2 /= bottom