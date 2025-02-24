{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE RecordWildCards #-}
-- | Translation for Symbolic.AST formulas to and from SMTLib
module Symbolic.SMT(prelude, translate, parseResult, parseModel, SolverResult(..), setupSMT) where

import Text.Printf
import Symbolic.AST
import Data.FileEmbed
import Syntax.Span (Span(..), Position(..))
import Solver
import Control.Monad.Reader
import Data.Map (Map)
import qualified Data.Map as Map
import qualified Data.Set as Set
import Data.Set (Set)
import Control.Monad.State
import Domain.Core.AbstractCount (AbstractCount(..))
import Lattice.Class (leq)
import Data.Maybe (fromMaybe)
import Control.Monad.Except
import qualified Syntax.Scheme.Parser as SExp
import Syntax.Scheme.Parser (pattern (:::))
import Control.Lens.TH
import Control.Lens (over, view)
import Data.Functor
import Data.Foldable (Foldable(toList, fold))
import Debug.Trace

--------------------------------------------------
-- Translation monad
--------------------------------------------------

-- | State that keeps track of a mapping between symbolic variables 
-- and their SMT constants. It also keeps track of unmapped constants 
-- as a set of strings.
data TranslationMappingState i  = TranslationMappingState {
   -- | Mapped variables
   _mappedVariables :: Map i (Set String),
   -- | Unmapped+mapped variables
   _allVariables :: Set String
}

-- | The initial mapping state
initialMappingState :: TranslationMappingState i
initialMappingState = TranslationMappingState {
   _mappedVariables = Map.empty,
   _allVariables = Set.empty
}

makeLenses ''TranslationMappingState

-- | Register a mapped variable
registerMapped :: TranslateM i m => i -> String -> m ()
registerMapped k v = do
   modify (over mappedVariables (Map.insertWith Set.union k (Set.singleton v)))
   registerUnmapped v

-- | Register an unmapped variable
registerUnmapped :: TranslateM i m => String -> m ()
registerUnmapped v =
   modify (over allVariables (Set.union (Set.singleton v)))

-- | Get the total number of variables
numberOfVariables :: TranslateM i m => m Int
numberOfVariables = gets (Set.size . view allVariables)

type TranslateM i m =
   ( MonadReader (Map i String) m, -- constants mapped to symbolic variables  
     MonadState (TranslationMappingState i) m, Ord i)


-- | Lookup the assignment of the given variable 
-- to a symbolic variable
symVar :: TranslateM i m => i -> m String
symVar k = do
   (\vrr -> registerMapped k vrr $> vrr) =<< maybe fresh return =<< asks (Map.lookup k)

-- | Generate a fresh identifier
fresh :: TranslateM i m => m String
fresh = do
   siz <- numberOfVariables
   let vrr = "y" ++ show siz
   registerUnmapped vrr
   return vrr


--------------------------------------------------
-- Translation
--------------------------------------------------

prelude :: String
prelude = $(makeRelativeToProject "./smt/prelude.scm" >>= embedStringFile)

-- | Translate the given proposition into 
-- an SMTLib formula
translateAtomic :: TranslateM i m => Proposition i -> m String
translateAtomic (Variable vrr) = symVar vrr
translateAtomic (Function nam) = return nam
translateAtomic (Literal (Num n)) =
   return $ printf "(VInteger %s)" (show n)
translateAtomic (Literal (Str s)) =
   return $ printf "(VStr \"%s\")" s
translateAtomic (Literal (Boo b)) =
   return $ printf "(VBool %s)" (if b then "true" else "false")
translateAtomic (Literal (Sym s)) =
   return $ printf "(VSymbol %s)" s
translateAtomic (Literal Beh) = return "(VBeh)"
translateAtomic (Literal Mon) = return "(VMon)"
translateAtomic (Literal (Actor (Just actorSpan)))  =
   return $ printf "(KnownSpan %s %s)" (show (line (startPosition actorSpan))) (show (column (startPosition actorSpan)))
translateAtomic (Literal (Actor _)) =
   return $ printf "(UnknownSpan)"
translateAtomic (Literal Nil) =
   return $ printf "VNil"
translateAtomic (Literal v) = error $ "unsupported literal" ++ show v
translateAtomic (IsTrue prop) =
   printf "(true?/v %s)" <$> translateAtomic prop
translateAtomic (IsFalse prop) =
   printf "(false?/v %s)" <$> translateAtomic prop
translateAtomic (Predicate nam props) =
   printf "(%s %s)" nam . unwords <$> mapM translateAtomic props
-- SMTlib does not allow functions without arguments,
-- so we translate those differently
translateAtomic (Application f1 []) = translateAtomic f1
translateAtomic (Application f1 f2) =
   printf "(%s %s)" <$> translateAtomic f1 <*> (unwords <$> mapM translateAtomic f2)
translateAtomic Bottom = fresh -- return "(VError)"
translateAtomic Tautology = return "true"
translateAtomic Fail = return "false"
translateAtomic (Fresh _) = fresh
-- translateAtomic (Choice a b) = 
--    -- we currently do not have good support for joins 
--    -- in the symbolic representation, hence we simply return a fresh 
--    -- variable that has no relation with other fresh variables.
--    "(fresh)"

-- | Translate a formula to a string compatible
-- with the SMTLib format.
translate' :: TranslateM i m => Formula i -> m String
translate' (Conjunction fs) =
   printf "(and %s)". unwords  <$> mapM translate' (Set.toList fs)
translate' (Disjunction fs) =
   printf "(or %s)" . unwords <$> mapM translate' (Set.toList fs)
translate' (Negation f1) =
   printf "(not %s)" <$> translate' f1
translate' (Atomic prop) =
   printf "%s" <$> translateAtomic prop
translate' (Implies f1 f2) =
   printf "(=> %s %s)" <$> translate' f1 <*> translate' f2
translate' Empty = return "true"

-- | Translate the given formula while accounting for the 
-- abstract count of each of the symbolic variables in the 
-- formula. Variables with abstract count > 1 are translated
-- to fresh variables (i.e., free variables that can not 
-- occur in other constraints), variables with an abstract 
-- count of exactly one are translated to regular variables 
-- and can occur in multiple constraints.
translate :: (Ord i, Show i) => Map i AbstractCount -> Formula i -> (String, Set String, Map i (Set String))
translate count formula = (t, allVariables', mappedVariables')
   where vars = filter countOne $ Set.toList $ strictVariables formula
         countOne var = leq (fromMaybe (error $ "variable " ++ show var ++ " not found in the abstract count map for " ++ show formula) $ Map.lookup var count) CountOne
         syms = Map.fromList (zip vars (map (("x" ++) . show) [0..length vars]))
         (t, TranslationMappingState { .. }) = runState (runReaderT (translate' formula) syms) initialMappingState
         -- some variables will be unconstrained (e.g., because of abstraction) but they still need to get values 
         -- from the model. These variables are the ones that are in the abstract count mapping but not in the 
         -- mapped variables mapping.
         unconstrainedVariables = Set.difference (Map.keysSet count) (Map.keysSet _mappedVariables)
         -- generate SMT constants for these variables
         unconstrainedConstants = Map.fromList $ zipWith (\k idx -> (k, Set.singleton $ "z" ++ show idx)) (Set.toList unconstrainedVariables) [0 :: Int ..]
         allVariables' = _allVariables `Set.union` fold (Map.elems unconstrainedConstants)
         mappedVariables' = Map.unionWith Set.union _mappedVariables unconstrainedConstants



-- | Parse an S-expression literal to an SMT literal
parseLiteral :: MonadError String m => SExp.SExp -> m Literal
parseLiteral (SExp.Atom "VInteger" _ ::: SExp.Num n _ ::: SExp.SNil _) =
   return $ Num n
parseLiteral (SExp.Atom "VInteger" _ ::: (SExp.Atom "-" _ ::: SExp.Num n _ ::: SExp.SNil _) ::: SExp.SNil _) = 
   return $ Num $ -n
parseLiteral (SExp.Atom "VReal" _ ::: (SExp.Atom "-" _ ::: SExp.Rea n _ ::: SExp.SNil _) ::: SExp.SNil _) = 
   return $ Rea (-n)
parseLiteral (SExp.Atom "VReal" _ ::: SExp.Rea n _ ::: SExp.SNil _) =
   return $ Rea n
parseLiteral (SExp.Atom "VBool" _ ::: SExp.Atom truthValue _ ::: SExp.SNil _)
   | truthValue == "true" || truthValue == "false" = return (Boo (truthValue == "true"))
   | otherwise = throwError $ "invalid boolean literal " ++ truthValue
parseLiteral (SExp.Atom "VSymbol" _ ::: SExp.Atom n _ ::: SExp.SNil _) =
   return $ Sym n
parseLiteral (SExp.Atom "VNil" _) = 
   return $ Nil
parseLiteral (SExp.Atom "VPair" _) = 
   return $ Pair
parseLiteral l = throwError $ "unsupported literal = "  ++ show l ++ ";"

-- | Parse the S-expression to a model
parseAssignment :: MonadError String m => Map String i -> SExp.SExp -> m (Maybe (i, Set Literal))
parseAssignment assgn (SExp.Atom "define-fun" _ ::: SExp.Atom x _ ::: _ ::: SExp.Atom _sort _ ::: literal ::: SExp.SNil _) =
   liftA2 (,) (Map.lookup x assgn) . Just . Set.singleton <$> parseLiteral literal
parseAssignment _ _ = throwError "not a valid assignment"

-- | Parse a list of assignments into a model
parseModel :: (Ord i, MonadError String m) => Map String i -> SExp.SExp -> m (Model i)
parseModel assgn = fmap (Model . Map.fromListWith Set.union . concatMap toList) . SExp.smapM (parseAssignment assgn)

-- | Parses the (check-sat) result
parseResult :: String -> SolverResult
parseResult "sat" = Sat
parseResult "unsat" = Unsat
parseResult _ = Unknown

------------------------------------------------------------
-- Utility functions
------------------------------------------------------------

-- | Setup the prelude in a solver monad
setupSMT :: FormulaSolver i m => m ()
setupSMT = setup prelude
