-- | Exposes Erlang BIFs inside the SimpleActor monadic context 
--
-- It expects the following calling convention:
-- * BIFs are named after their module, function name and arity
-- * The arguments are passed as linked lists in the Scheme memory and have to be dereferenced before use
module Analysis.SimpleActor.ErlangPrimitives(erlangPrimitives, runPrimitive, allPrimitiveNames) where

import Analysis.Erlang.BIF
import Data.Kind
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (fromJust)
import Data.Set (Set)
import qualified Data.Set as Set
import Domain.Scheme.Class hiding (Exp, prim)
import Syntax.AST


------------------------------------------------------------
-- Monadic contexts
------------------------------------------------------------

-- | Monadic context in which primitives are executed
type PrimM :: (Type -> Type) -> Constraint
type PrimM m = (Monad m)

-- | A wrapper for functions representing Erlang primitives
newtype ErlangPrim v = ErlangPrim { getPrim :: forall m . (SchemeDomain v, PrimM m) => Exp -> [v] -> m v}

-- | Convience alias for 'ErlangPrimM'
prim :: (forall m . (SchemeDomain v, PrimM m) => Exp -> [v] -> m v) -> ErlangPrim v
prim = ErlangPrim

------------------------------------------------------------
-- Parameter list utilities
------------------------------------------------------------

-- | Dereference a parameter list with one parameter
deref1 :: (SchemeDomain v, PrimM m) => (v -> m v) -> [v] -> m v
deref1 = undefined

-- | Dereference a parameter list with two parameters
deref2 :: (SchemeDomain v, PrimM m) => (v -> v -> m v) -> [v] -> m v
deref2 = undefined

-- | Dereference a parameter list with three parameters
deref3 :: (SchemeDomain v, PrimM m) => (v -> v -> v -> m v) -> [v] -> m v
deref3 = undefined

------------------------------------------------------------
-- Primitives
------------------------------------------------------------

erlangPrimitives :: Map String (ErlangPrim v)
erlangPrimitives = Map.fromList [
    ("erlang:abs/1", prim $ const $ deref1 $ \v -> undefined),
    ("erlang:display", prim $ const $ const $ return nil) 
  ]

-- | Runs the given primitive on the given arguments
runPrimitive :: (SchemeDomain v, PrimM m) => String -> Exp -> [v] -> m v
runPrimitive nam
  | Set.member nam allSupportedPrimitiveNames = getPrim $ fromJust $ Map.lookup nam erlangPrimitives
  | Set.member nam allPrimitiveNames = error $ "erlang: primitive " ++ nam ++ " not supported"
  | otherwise = error $ "erlang: primitive " ++ nam ++ " does not exists"

------------------------------------------------------------
-- Primitive lists
------------------------------------------------------------

-- | A list with the names of all supported Erlang primitives
allSupportedPrimitiveNames :: Set String
allSupportedPrimitiveNames = Map.keysSet erlangPrimitives

-- | A list with the names of all Erlang primitives
allPrimitiveNames :: Set String
allPrimitiveNames = Set.fromList $ map bifName allBifs

