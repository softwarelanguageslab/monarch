-- | Translation for Symbolic.AST formulas to and from SMTLib
module Symbolic.SMT(prelude, translate, parseResult, SolverResult(..), setupSMT) where

import Text.Printf
import Symbolic.AST
import Data.FileEmbed
import Data.List
import Syntax.Span (Span(..), Position(..))
import Solver

--------------------------------------------------
-- Translation
--------------------------------------------------

prelude :: String
prelude = $(embedStringFile "./smt/prelude.scm")

-- | Translate the given proposition into 
-- an SMTLib formula
translateAtomic :: ShowableVariable i => Proposition i -> String
translateAtomic (Variable vrr) = varName vrr
translateAtomic (Function nam) = nam
translateAtomic (Literal (Num n)) =
   printf "(VInteger %s)" (show n)
translateAtomic (Literal (Str s)) =
   printf "(VStr \"%s\")" s
translateAtomic (Literal (Boo b)) =
   printf "(VBool %s)" (if b then "true" else "false")
translateAtomic (Literal (Sym s)) =
   printf "(VSymbol %s)" s
translateAtomic (Literal Beh) = "(VBeh)"
translateAtomic (Literal Mon) = "(VMon)"
translateAtomic (Literal (Actor (Just span)))  =
   printf "(KnownSpan %s %s)" (show (line (startPosition span))) (show (column (startPosition span)))
translateAtomic (Literal (Actor _)) =
   printf "(UnknownSpan)"
translateAtomic (IsTrue prop) =
   printf "(true?/v %s)" (translateAtomic prop)
translateAtomic (IsFalse prop) =
   printf "(false?/v %s)" (translateAtomic prop)
translateAtomic (Predicate nam props) =
   printf "(%s %s)" nam (unwords $ map translateAtomic props)
-- SMTlib does not allow functions without arguments,
-- so we translate those differently
translateAtomic (Application f1 []) = translateAtomic f1
translateAtomic (Application f1 f2) =
   printf "(%s %s)" (translateAtomic f1) (unwords $ map translateAtomic f2)
translateAtomic Bottom = "(VError)"
translateAtomic Tautology = "true"
translateAtomic Fresh = "fresh"
-- translateAtomic (Choice a b) = 
--    -- we currently do not have good support for joins 
--    -- in the symbolic representation, hence we simply return a fresh 
--    -- variable that has no relation with other fresh variables.
--    "(fresh)"
translateAtomic e = error $ "pattern " ++ show e ++ "not matched"

-- | Translate a formula to a string compatible
-- with the SMTLib format.
translate :: ShowableVariable i => Formula i -> String
translate (Conjunction f1 f2) =
   printf "(and %s %s)" (translate f1) (translate f2)
translate (Disjunction f1 f2) =
   printf "(or %s %s)" (translate f1) (translate f2)
translate (Negation f1) =
   printf "(not %s)" (translate f1)
translate (Atomic prop) =
   printf (translateAtomic prop)
translate (Implies f1 f2) = 
   printf "(=> %s %s)" (translate f1) (translate f2)
translate Empty = "true"

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
