module Analysis.CoreErlang.Soter(
    predicateHolds,
    allPredicatesHold
  ) where

import Syntax.CoreErlang.Soter
import Data.Map (Map)
import qualified Data.Map as Map
import Control.Monad.Trans.Reader (ReaderT, runReaderT)
import Control.Monad.Trans.Maybe (MaybeT (runMaybeT, MaybeT))
import Data.Functor.Identity
import Control.Monad.Reader (asks)
import Prelude hiding (lookup)
import Lattice.ConstantPropagationLattice (CP)
import Domain.Core.BoolDomain (boolTop)
import Domain.Class (Domain(inject))
import qualified Domain.Core.BoolDomain as Domain
import Control.Monad ((<=<))

type EvalM = MaybeT (ReaderT (Map String Int) Identity)

runEval :: Map String Int -> EvalM a -> Maybe a
runEval mapping = runIdentity
                . flip runReaderT mapping
                . runMaybeT

lookup :: String -> EvalM Constant
lookup nam = MaybeT $ asks (fmap Num . Map.lookup nam)

ensureNum :: Constant -> EvalM Int
ensureNum = MaybeT . return . getNum

-- | Evaluate a single predicate and its value as
-- a constant, it fails when a variable is not
-- defined in the 'mapping' or when incompatible
-- constants are returned.
evalExpr :: Exp -> EvalM Constant
evalExpr expr = case expr of
   (Add e1 e2) -> do
      v1 <- ensureNum =<< evalExpr e1
      v2 <- ensureNum =<< evalExpr e2
      return (Num $ v1 + v2)

   (Sub e1 e2) -> do
     v1 <- ensureNum =<< evalExpr e1
     v2 <- ensureNum =<< evalExpr e2
     return (Num $ v1 - v2)

   (Lte e1 e2) -> do
     v1 <- ensureNum =<< evalExpr e1
     v2 <- ensureNum =<< evalExpr e2
     return (Bln $ v1 <= v2)

   (Gte e1 e2) -> do
     v1 <- ensureNum =<< evalExpr e1
     v2 <- ensureNum =<< evalExpr e2
     return (Bln $ v1 >= v2)

   (Lt e1 e2) -> do
     v1 <- ensureNum =<< evalExpr e1
     v2 <- ensureNum =<< evalExpr e2
     return (Bln $ v1 < v2)

   (Gt e1 e2) -> do
     v1 <- ensureNum =<< evalExpr e1
     v2 <- ensureNum =<< evalExpr e2
     return (Bln $ v1 > v2)

   (Const c) -> return c
   (Var ide) -> lookup ide



-- | Checks whether the given predicate holds.
-- If the evaluation of a predicate fails then
-- 'False' is returned.
predicateHolds :: Map String Int -> Predicate -> CP Bool
predicateHolds mapping = foldr (Domain.and . check) (inject True) . conjunctions
  where check = maybe boolTop inject . (getBln <=< (runEval mapping . evalExpr))


-- | Check whether all predicates hold under the given mapping
allPredicatesHold :: Map String Int -> [Predicate] -> CP Bool
allPredicatesHold mapping = foldr (Domain.and . predicateHolds mapping) (inject True)
