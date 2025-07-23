{-# OPTIONS_GHC -Wno-incomplete-uni-patterns #-}
-- | Exposes Erlang BIFs inside the SimpleActor monadic context 
--
-- It expects the following calling convention:
-- * BIFs are named after their module, function name and arity
-- * The arguments are passed as linked lists in the Scheme memory and have to be dereferenced before use
module Analysis.SimpleActor.ErlangPrimitives(erlangPrimitives, runPrimitive, allPrimitiveNames) where

import Analysis.Erlang.BIF
import Analysis.SimpleActor.Monad (EvalM)
import Control.Monad.Join
import Data.Map (Map)
import qualified Data.Map as Map
import Data.Maybe (fromJust)
import Data.Set (Set)
import qualified Data.Set as Set
import Domain.Scheme.Class hiding (Exp, prim)
import Syntax.AST
import Analysis.Actors.Monad (MonadActorLocal(..))
import Domain.Actor (aref)
import Domain.Core (NumberDomain(..), IntDomain (..))
import Prelude hiding (ceiling, div, floor, round)
import Domain.Class (Domain(inject))
import Domain (RealDomain(..), PairDomain (..))
import Analysis.Scheme.Monad (derefPai)
import Lattice.Class (Joinable)


------------------------------------------------------------
-- Monadic contexts
------------------------------------------------------------

-- | Monadic context in which primitives are executed
type PrimM v k m = (Monad m, EvalM v k m)

-- | A wrapper for functions representing Erlang primitives
newtype ErlangPrim v = ErlangPrim { getPrim :: forall k m . (SchemeDomain v, PrimM v k m) => Exp -> [v] -> m v}

-- | Convience alias for 'ErlangPrimM'
prim :: (forall k m . (SchemeDomain v, PrimM v k m) => Exp -> [v] -> m v) -> ErlangPrim v
prim = ErlangPrim

------------------------------------------------------------
-- Parameter list utilities
------------------------------------------------------------

derefN' :: (Joinable a, PrimM v k m) => Int -> v -> [v] -> ([v] -> m a) ->  m a
derefN' 0 v acc f = cond (pure $ isNil v)
                        (f $ reverse acc)
                        mbottom -- TODO: raise error
derefN' n v acc f = cond (pure $ isPaiPtr v)
                  (derefPai (\_ pai -> derefN' (n-1) (cdr pai) (car pai : acc) f) =<< pptrs v)
                  mbottom -- TODO: raise error

derefN :: (Joinable a, PrimM v k m) => Int -> ([v] -> m a) -> v -> m a
derefN n f v = derefN' n v [] f

-- | Dereference a parameter list with one parameter
deref1 :: (PrimM v k m) => (v -> m v) -> [v] -> m v
deref1 f [v] = derefN 1 (\[v'] -> f v') v
deref1 _ _   = mbottom -- TODO: raise error

-- | Dereference a parameter list with two parameters
deref2 :: (PrimM v k m) =>(v -> v -> m v) -> [v] -> m v
deref2 f [v] = derefN 2 (\[v1, v2] -> f v1 v2) v
deref2 _ _   = mbottom -- TODO: raise error

-- | Dereference a parameter list with three parameters
deref3 :: (PrimM v k m) =>(v -> v -> v -> m v) -> [v] -> m v
deref3 f [v] = derefN 3 (\[v1, v2, v3] -> f v1 v2 v3) v
deref3 _ _ = mbottom -- TODO: raiase error
 
------------------------------------------------------------
-- Primitives
------------------------------------------------------------

erlangPrimitives :: forall v . Map String (ErlangPrim v)
erlangPrimitives = Map.fromList [
    ("erlang:abs/1", prim $ const $ deref1 $ const undefined),
    ("erlang:display/1", prim $ const $ const $ return nil),
    ("erlang:exit/1", prim $ const $ const mbottom) ,
    ("erlang:exit/2", prim $ const $ const mbottom) ,
    ("erlang:exit/3", prim $ const $ const mbottom) ,
    ("erlang:exit_signal/2", prim $ const $ const mbottom) ,
    ("erlang:self/0", prim $ const $ const $ fmap aref getSelf),
    -- TODO: important: spawn and spawn_link, need call functionality in monad to do that
    -- TODO: send/2, send/3 
    ("erlang:>/2", prim $ const $ deref2 gt),
    ("erlang:>=/2", prim $ const $ deref2 ge),
    ("erlang:</2", prim $ const $ deref2 lt),
    ("erlang:=</2", prim $ const $ deref2 le),
    -- ("erlang:==/2", prim $ const $ deref2 eql),
    ("erlang:+/2", prim $ const $ deref2 (plus @_ @v)),
    ("erlang:-/2", prim $ const $ deref2 (minus @_ @v)),
    ("erlang:-/1", prim $ const $ deref1 (minus @_ @v (inject (0 :: Integer)))),
    ("erlang:+/1", prim $ const $ deref1 (plus @_ @v (inject (0 :: Integer)))),
    ("erlang:*/2", prim $ const $ deref2 (times @_ @v)),
    ("erlang://2", prim $ const $ deref2 (div @_ @v)),
    ("erlang:div/2", prim $ const $ deref2 (quotient @_ @v @(StrDom v) @v)),
    ("erlang:rem/2", prim $  const $ deref2 (remainder @_ @v @(StrDom v) @v)),
    ("erlang:floor/1", prim $ const $ deref1 (floor @_ @v @v)),
    ("math:floor/1", prim $ const $ deref1 (floor @_ @v @v)),
    ("math:ceil/1", prim $ const $ deref1 (ceiling @_ @v @v)),
    ("erlang:ceil/1", prim $ const $ deref1 (ceiling @_ @v @v))
   ]

-- | Runs the given primitive on the given arguments
runPrimitive :: (PrimM v k m) => String -> Exp -> [v] -> m v
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

