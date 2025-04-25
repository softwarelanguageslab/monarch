{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
{-# OPTIONS_GHC -Wno-orphans #-}
module Analysis.Environment(Environment(..)) where

import Data.Map (Map)
import qualified Data.Map as Map
import Data.HashMap.Strict (HashMap)
import qualified Data.HashMap.Strict as HashMap
import Lattice.Trace
import Data.Set (Set)
import qualified Data.Set as Set

class Environment env a | env -> a where
   empty :: env
   lookup  :: String -> env -> a
   extend  :: String -> a -> env -> env
   restrictEnv :: Set String -> env -> env
   extends :: [(String, a)] -> env -> env
   extends = flip (foldr (uncurry extend))


-- A basic representation of an environment using a `Map`
instance Environment (Map String a) a where
   lookup k    = Map.findWithDefault (error $ "no such variable " ++ show k)  k
   extend      = Map.insert
   empty       = Map.empty
   restrictEnv = flip Map.restrictKeys

-- Hashmap based representation of the environment gives a supposedly
-- faster lookup speed since its keys are strings.
instance Environment (HashMap String a) a where
    empty = HashMap.empty
    lookup k = HashMap.findWithDefault (error $ "no such variable " ++ show k) k
    extend = HashMap.insert
    restrictEnv nams = HashMap.filterWithKey (\k -> const $ Set.member k nams)

instance (Ord a) => Trace a (Map String a) where
   trace = Set.fromList . map snd . Map.toList

instance (Ord a) => Trace a (HashMap String a) where
   trace = Set.fromList . map snd . HashMap.toList
