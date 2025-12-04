{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}

-- | Exposes Erlang BIFs inside the SimpleActor monadic context
--
-- It expects the following calling convention:
-- * BIFs are named after their module, function name and arity
module Analysis.SimpleActor.ErlangPrimitives
  ( erlangPrimitives,
    getPrimitive,
    allPrimitiveNames,
    qualifiedPrimitives
  )
where

import Analysis.Actors.Monad (MonadActorLocal (..))
import Analysis.Erlang.BIF
import Analysis.SimpleActor.Primitives
import Control.Monad.Join
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (fromJust)
import Data.Set (Set)
import qualified Data.Set as Set
import Domain.Actor (aref)
import Domain.Class (Domain (inject))
import Domain.Core.NumberDomain.Class
import Domain.Scheme.Class hiding (Exp, prim)
import Syntax.AST
import Prelude hiding (ceiling, div, floor, round)
import Text.Regex
import Analysis.SimpleActor.Monad (PrimM, Error (ArityMismatch))
import Control.Monad.Escape (escape)

------------------------------------------------------------
-- Monadic contexts
------------------------------------------------------------

-- | A wrapper for functions representing Erlang primitives
newtype ErlangPrim v = ErlangPrim { _getPrim :: forall k m. (SchemeDomain v, PrimM v k m) => Exp -> [v] -> m v}

-- | Convience alias for 'ErlangPrimM'
prim :: (forall k m. (SchemeDomain v, PrimM v k m) => Exp -> [v] -> m v) -> ErlangPrim v
prim = ErlangPrim

------------------------------------------------------------
-- Parameter list utilities
------------------------------------------------------------

-- prim0 :: PrimM v k m => m v -> [v] -> m v
-- prim0 f [] = f
-- prim0 _ vs = escape $ ArityMismatch 0 (length vs)


prim1 :: PrimM v k m => (v -> m v) -> [v] -> m v
prim1 f [v] = f v
prim1 _ vs = escape $ ArityMismatch 1 (length vs)


prim2 :: PrimM v k m => (v -> v -> m v) -> [v] -> m v
prim2 f [v1, v2] = f v1 v2
prim2 _ vs = escape $ ArityMismatch 0 (length vs)

prim3 :: PrimM v k m => (v -> v -> v -> m v) -> [v] -> m v
prim3 f [v1, v2, v3] = f v1 v2 v3
prim3 _ vs = escape $ ArityMismatch 0 (length vs)

------------------------------------------------------------
-- Primitives
------------------------------------------------------------

erlangPrimitives :: forall v. Map String (ErlangPrim v)
erlangPrimitives =
  Map.fromList
    [ ("erlang:abs/1", prim $ const $ prim1 $ const undefined),
      ("erlang:display/1", prim $ const $ prim1 $ const $ return nil),
      ("erlang:exit/1", prim $ const $ prim1 $ const mbottom),
      ("erlang:exit/2", prim $ const $ prim2 $ const $ const mbottom),
      ("erlang:exit/3", prim $ const $ prim3 $ const $ const $ const mbottom),
      ("erlang:exit_signal/2", prim $ const $ const mbottom),
      ("erlang:self/0", prim $ const $ const $ fmap aref getSelf),
      -- TODO: important: spawn and spawn_link, need call functionality in monad to do that
      -- TODO: send/2, send/3
      ("erlang:>/2", prim $ const $ prim2 gt),
      ("erlang:>=/2", prim $ const $ prim2 ge),
      ("erlang:</2", prim $ const $ prim2 lt),
      ("erlang:=</2", prim $ const $ prim2 le),
      -- ("erlang:==/2", prim $ const $ deref2 eql),
      ("erlang:+/2", prim $ const $ prim2 (plus @_ @v)),
      ("erlang:-/2", prim $ const $ prim2 (minus @_ @v)),
      ("erlang:-/1", prim $ const $ prim1 (minus @_ @v (inject (0 :: Integer)))),
      ("erlang:+/1", prim $ const $ prim1 (plus @_ @v (inject (0 :: Integer)))),
      ("erlang:*/2", prim $ const $ prim2 (times @_ @v)),
      ("erlang://2", prim $ const $ prim2 (div @_ @v)),
      ("erlang:div/2", prim $ const $ prim2 (quotient @_ @v @(StrDom v) @v)),
      ("erlang:rem/2", prim $ const $ prim2 (remainder @_ @v @(StrDom v) @v)),
      ("erlang:floor/1", prim $ const $ prim1 (floor @_ @v @v)),
      ("math:floor/1", prim $ const $ prim1 (floor @_ @v @v)),
      ("math:ceil/1", prim $ const $ prim1 (ceiling @_ @v @v)),
      ("erlang:ceil/1", prim $ const $ prim1 (ceiling @_ @v @v))
    ]

-- | Returns a qualified list mapping of primitive names to their implementation
qualifiedPrimitives :: Map (String, String) (ErlangPrim v)
qualifiedPrimitives = Map.mapKeys splitName erlangPrimitives
  where
    -- SAFETY: 'fromJust' should never fail as each name in the "erlangPrimitives"
    -- mapping is fully qualified with its namespace and matches the given regex.
    splitName k = case fromJust $ matchRegex (mkRegex "(.*):(.*)") k of
                  [namespace, fnName] -> (namespace, fnName)
                  _ -> error "unreachable case (due to Regex construction)"

-- | Returns the appropriate primitive for the given primitive name
getPrimitive :: String -> ErlangPrim v
getPrimitive nam
  | Set.member nam allSupportedPrimitiveNames = fromJust $ Map.lookup nam erlangPrimitives
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

------------------------------------------------------------
-- SimpleActor primitives wrapper
------------------------------------------------------------

instance SimpleActorPrimitive v (ErlangPrim v) where
  runPrimitive (ErlangPrim p) = p
