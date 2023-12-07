{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE UndecidableInstances #-}
-- | A store for Scheme-based analyses.
--
-- The store is divided into three parts: 
-- - a store for the variables of the program
-- - a store for storing the pairs allocated by the program
-- - a store for storing the vector allocated by the program
-- - a store for storing the strings allocated by the program
module Analysis.Scheme.Store(fromValues, SchemeStore(..), combineStores) where

import Data.Map (Map)
import qualified Data.Map as Map
import Domain.Scheme

data SchemeStore v var str pai vec = SchemeStore {
     values  :: Map var (VarDom v),
     strings :: Map str (StrDom v),
     pairs   :: Map pai (PaiDom v),
     vecs    :: Map vec (VecDom v)
}

fromValues :: Map var (VarDom v) -> SchemeStore v var str pai vec
fromValues vls = SchemeStore {
      values  = vls,
      strings = Map.empty,
      pairs   = Map.empty,
      vecs    = Map.empty
}

combineStores :: Monad m => m ((((a, Map var (VarDom v)), Map str (StrDom v)), Map pai (PaiDom v)), Map vec (VecDom v)) -> m (a, SchemeStore v var str pai vec)
combineStores m = m >>= (\((((a, vars), strings), pairs), vecs) -> return (a, SchemeStore vars strings pairs vecs))
