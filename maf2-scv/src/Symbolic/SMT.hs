-- | Translation for Symbolic.AST formulas to and from SMTLib
module Symbolic.SMT(prelude, translate, parseResult, SolverResult(..), setupSMT) where

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
import Lattice.Class (leq, justOrBot)

--------------------------------------------------
-- Translation monad
--------------------------------------------------

type TranslateM i m =
   (MonadReader (Map i String) m,
    MonadState (Set String) m, Ord i)


-- | Lookup the assignment of the given variable 
-- to a symbolic variable
symVar :: TranslateM i m => i -> m String
symVar k = maybe fresh return =<< asks (Map.lookup k)

-- | Generate a fresh identifier
fresh :: TranslateM i m => m String
fresh = do
   siz <- gets Set.size
   let vrr = "y" ++ show siz
   modify (Set.insert vrr)
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
translateAtomic Bottom = return "(VError)"
translateAtomic Tautology = return "true"
translateAtomic Fresh = fresh
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
translate :: (Ord i) => Map i AbstractCount -> Formula i -> (String, Map i String, Set String)
translate count formula = (t, syms, freshs)
   where vars = filter countOne $ Set.toList $ variables formula
         countOne var = leq (justOrBot $ Map.lookup var count) CountOne
         syms = Map.fromList (zip vars (map (("x" ++) . show) [0..length vars]))
         (t, freshs) = runState (runReaderT (translate' formula) syms) Set.empty

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
