{-# LANGUAGE RankNTypes #-}
{-# OPTIONS_GHC -Wno-name-shadowing #-}
module Analysis.Python.Primitives where

import Domain.Python
import Analysis.Python.Monad
import qualified Data.Map as Map
import Data.Map (Map)
import Data.Maybe

data Prim v a = Prim { 
   name :: String, 
   run :: forall m . PyM m v a => a -> [v] -> m v 
}

prim1 :: String -> (forall m . PyM m v a => v -> m v) -> Prim v a
prim1 nam f = Prim nam (\_ [v1] -> f v1)

allPrimitives :: [Prim v a]
allPrimitives = [
   prim1 "print" (\v -> stdout >>= flip write v >> pure none)]

applyPrimitive :: PyM m v a => String -> a -> [v] -> m v
applyPrimitive nam = run (fromJust $ Map.lookup nam primitivesByName) 

initialSto :: forall v adr a o . (Ord adr) => Map String adr -> PyDomain v o a => Map adr v
initialSto env = 
   Map.fromList $ map (\prim -> (fromJust (Map.lookup (name prim) env), primitive (name prim))) allPrimitives

initialEnv :: (String -> adr) -> Map String adr
initialEnv alloc = 
   Map.fromList $ map (\prim -> (name prim, alloc (name prim))) allPrimitives

primitivesByName :: Map String (Prim v a)
primitivesByName = Map.fromList (map (\p -> (name p, p)) allPrimitives)

primitiveNames :: [String]
primitiveNames = map name allPrimitives
