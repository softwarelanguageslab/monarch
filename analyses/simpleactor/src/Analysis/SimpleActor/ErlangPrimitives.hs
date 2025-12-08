{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
{-# LANGUAGE LambdaCase #-}

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

import Analysis.Actors.Monad (MonadActorLocal (..), MonadReceive (peek', receive'), MonadSend (..))
import Analysis.Erlang.BIF
import Analysis.SimpleActor.Primitives
import Control.Monad.Join
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (fromJust)
import Data.Set (Set)
import qualified Data.Set as Set
import Domain.Actor (aref, ActorDomain (arefs))
import Domain.Class (Domain (inject))
import Domain.Core.NumberDomain.Class
import Domain.Scheme.Class hiding (Exp, prim)
import Syntax.AST
import Prelude hiding (ceiling, div, floor, round)
import Text.Regex
import Analysis.SimpleActor.Monad (PrimM, Error (ArityMismatch), MonadApply (..), MonadSpawn (spawn))
import Control.Monad.Escape (escape)
import Data.Functor
import Control.Monad ((<=<))
import Analysis.Scheme.Monad (lookupVar)
import Analysis.Monad.Environment (EnvM(..))
import Analysis.Monad.Context (CtxM(..))
import Lattice.Equal (EqualLattice(eql))
import qualified Lattice.BottomLiftedLattice as BL
import qualified Lattice.ConstantPropagationLattice as CP

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

prim0 :: PrimM v k m => m v -> [v] -> m v
prim0 f [] = f
prim0 _ vs = escape $ ArityMismatch 0 (length vs)


prim1 :: PrimM v k m => (v -> m v) -> [v] -> m v
prim1 f [v] = f v
prim1 _ vs = escape $ ArityMismatch 1 (length vs)


prim2 :: PrimM v k m => (v -> v -> m v) -> [v] -> m v
prim2 f [v1, v2] = f v1 v2
prim2 _ vs = escape $ ArityMismatch 0 (length vs)

prim3 :: PrimM v k m => (v -> v -> v -> m v) -> [v] -> m v
prim3 f [v1, v2, v3] = f v1 v2 v3
prim3 _ vs = escape $ ArityMismatch 0 (length vs)

bindPrs :: Env v -> [Ide] -> [v] -> Env v
bindPrs = undefined

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
      ("erlang:spawn/1", prim $ const $ prim1 $ \fun -> do
        let applyLam = \case (Lam [] ex _, env) -> (getCtx >>= spawn ex env) $> nil
                             (Lam prs _ _, _)   -> escape $ ArityMismatch 0 (length prs)
                             _ -> error "unexpected case"
        mjoinMap applyLam (clos fun)
      ),
      ("erlang:spawn/3", prim $ \expr -> prim3 $ \modl funName ags -> do
        moduleSelector <-  mjoinMap (lookupVar <=< lookupEnv) $ symbols modl
        mjoinMap (\(Lam prs ex _, env') -> (getCtx >>= spawn ex (bindPrs env' prs [ags])) $> nil  ) . clos =<< applyFun expr moduleSelector [funName]

      ),
      -- TODO: important: spawn and spawn_link, need call functionality in monad to do that
      -- TODO: send/2, send/3
      ("erlang:!", prim $ const $ prim2 $ \rcv val -> (arefs (fmap (BL.Value . CP.Constant) . flip send val) rcv >>= fromBL) $> nil),
      ("erlang:>/2", prim $ const $ prim2 gt),
      ("erlang:>=/2", prim $ const $ prim2 ge),
      ("erlang:</2", prim $ const $ prim2 lt),
      ("erlang:=</2", prim $ const $ prim2 le),
      ("erlang:==/2", prim $ const $ prim2 (\v1 v2 -> fromBL $ eql v1 v2)),
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
      ("erlang:ceil/1", prim $ const $ prim1 (ceiling @_ @v @v)),
      ("primop:recv_peek_message", prim $ const $ prim0 $ getSelf >>= peek'),
      -- TODO: This is correct but VERY imprecise as every message will be considered
      -- even though we might be in a program state that already includes a message
      ("primop:remove_message", prim $ const $ prim0 $ (getSelf >>= receive') $> nil),
      -- NOTE: we do not consider any timeouts in this analysis
      ("primop:recv_wait_timeout", prim $ const $ prim1 $ const $ return nil),
      -- TODO: not sure what "recv_next" is supposed to mean, perhaps it is similar to "yield"?
      -- Nonetheless, I don't think it is relevant here.
      ("primop:recv_next", prim $ const $ prim0 $ return nil)
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
