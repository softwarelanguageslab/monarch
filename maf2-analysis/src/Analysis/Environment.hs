{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE AllowAmbiguousTypes #-}
module Analysis.Environment(Environment(..)) where

import Data.Map (Map)
import qualified Data.Map as Map

class Environment env a | env -> a where
   empty :: env
   lookup  :: String -> env -> a
   extend  :: String -> a -> env -> env
   extends :: [(String, a)] -> env -> env
   extends = flip (foldr (uncurry extend))

-- A basic representation of an environment using a `Map`
instance Environment (Map String a) a where
   lookup k = Map.findWithDefault (error $ "no such variable" ++ show k)  k
   extend   = Map.insert
   empty    = Map.empty
