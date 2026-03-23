{-# LANGUAGE OverloadedStrings #-}
module Analysis.PureActor.Semantics(
    runEvalEmpty,
    eval,
    runAnalysis,
    Fork(..),
    NonDet,
  ) where

import qualified Domain.Class as Domain
import Domain.PureActor
import Language.PureActor
import qualified Data.List as List
import qualified Data.Map.Lazy as Map
import qualified Data.Set as Set
import Lattice.Class (Joinable, BottomLattice)
import qualified Lattice.Class as L
import Lattice.ProductLattice ()
import Lattice.MapLattice ()
import Analysis.Fixpoint (lfp)


-----------------------------------------
-- State space 
-----------------------------------------

-- | A 'Turn' captures the entire state of the actor prior to executing its next turn
data Turn = Turn Expr Env Sto
  deriving (Ord, Eq, Show)
type Sto = Map Adr Val

-----------------------------------------
-- Monad
-----------------------------------------

newtype EvalM ξ a =
  EvalM { runEvalM :: Env -> Sto -> [(a, Sto)] }


-- | Runs the evaluation monad wih an empty initial environment and store 
runEvalEmpty :: EvalM ξ a -> [(a, Sto)]
runEvalEmpty ma = runEvalM ma Map.empty Map.empty


instance Functor (EvalM ξ) where
  fmap f (EvalM s) = EvalM $ \r st -> map (first f) (s r st)

instance Applicative (EvalM ξ) where
  pure = EvalM . const . (List.singleton .) . (,)
  (<*>) (EvalM fs) (EvalM as)  =
    EvalM $ \r st -> [ (f a, st'') | (f, st') <- fs r st, (a, st'') <- as r st' ]

instance Monad (EvalM ξ) where
  (>>=) (EvalM as) f  =
    EvalM $ \r st -> foldMap (\(a, st') -> runEvalM (f a) r st') (as r st)

instance Alternative (EvalM ξ) where
  empty = EvalM $ const $ const []
  (<|>) (EvalM as) (EvalM bs) =
    EvalM $ \r st -> as r st ++ bs r st

instance MonadPlus (EvalM ξ)

-----------------------------------------
-- Polymorphic configuration points for "EvalM" 
-----------------------------------------

-- | Determines how forking (and joining) should be
-- performed for the 'EvalM' monad according to the ξ family.
--
-- Families are meant to be implemented in this module, as the
-- internal representation of the EvalM monad remains opaque
-- for external clients.
class Fork ξ where
  type C ξ a :: Constraint
  -- | Monadic action over the EvalM monad for forking (e.g., splitting on a conditional)
  fork :: C ξ a => EvalM ξ a -> EvalM ξ a -> EvalM ξ a

-- Some useful forking configurations (encoded as a family)

-- | This configuration simply splits the monad into distinct non-deterministic paths, but does so without duplicates, hence the "Ord" constraint is required.
data NonDet
instance Fork NonDet where
  type C NonDet a = Ord a
  fork ma mb =
    EvalM $
      \r st -> Set.toList $ Set.fromList $ runEvalM (ma <|> mb) r st


-- | This configuration joins all of states resulting from both computations
-- together into a single element.
data Join
instance Fork Join where
  type C Join a = (BottomLattice a, Joinable a)
  fork ma mb =
    EvalM $
      \r st -> List.singleton $ foldr L.join L.bottom $ runEvalM (ma <|> mb) r st

-----------------------------------------
-- Semantics
-----------------------------------------

-- | Encodes the big-step evaluation function
eval :: Fork ξ => Expr -> EvalM ξ Val
eval =
  \case
    Lit l _ -> return $ Domain.inject l
    Begin es _ -> (mapM eval es >>= maybe mzero return . viaNonEmpty last)
    _ -> mzero

-----------------------------------------
-- Single actor analysis
-----------------------------------------


-- | The execution of a single actor can be thought of as a sequence
-- of actor turns which we collect into a set.
--
-- This set is monotonically increasing and finite, thus a least fixed
-- point can be computed over it.
--
-- Hence, the analysis of a single actor is defined as the least
-- fixpoint over the set of possible reachable behaviors.
analyze :: Set Turn -> Set Turn
analyze = foldMap analyze'

-- unlifted version of 'analyze'
analyze' :: Turn -> Set Turn
analyze' = error "NYI"

-- TODO: add some other parameters for the initial state, the initial
-- states are currently empty
runAnalysis :: Expr -> Set Turn
runAnalysis expr =
  lfp analyze (Set.singleton $ Turn expr Map.empty Map.empty)  
