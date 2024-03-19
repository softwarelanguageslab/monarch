-- | Translation for Symbolic.AST formulas to and from SMTLib
module Symbolic.SMT(prelude, translate, parseResult, SolverResult(..), setupSMT) where

import Text.Printf
import Symbolic.AST
import Data.FileEmbed
import Data.List
import Solver

--------------------------------------------------
-- Translation
--------------------------------------------------

prelude :: String
prelude = $(embedStringFile "./smt/prelude.scm")

-- | Translate the given proposition into 
-- an SMTLib formula
translateAtomic :: Proposition -> String
translateAtomic (Variable nam) = nam
translateAtomic (Literal (Num n)) =
   printf "(VInteger %s)" (show n)
translateAtomic (Literal (Str s)) =
   printf "(VStr \"%s\")" s
translateAtomic (Literal (Boo b)) =
   printf "(VBool %s)" (if b then "true" else "false")
translateAtomic (IsTrue prop) =
   printf "(true?/v %s)" (translateAtomic prop)
translateAtomic (IsFalse prop) =
   printf "(false?/v %s)" (translateAtomic prop)
translateAtomic (Predicate nam props) =
   printf "(%s %s)" nam (unwords $ map translateAtomic props)
translateAtomic (Application f1 f2) =
   printf "(%s %s)" (translateAtomic f1) (unwords $ map translateAtomic f2)

-- | Translate a formula to a string compatible
-- with the SMTLib format.
translate :: Formula -> String
translate (Conjunction f1 f2) =
   printf "(and %s %s)" (translate f1) (translate f2)
translate (Disjunction f1 f2) =
   printf "(or %s %s)" (translate f1) (translate f2)
translate (Negation f1) =
   printf "(not %s)" (translate f1)
translate (Atomic prop) =
   printf (translateAtomic prop)
translate Empty = ""

parseResult :: String -> SolverResult
parseResult "sat" = Sat
parseResult "unsat" = Unsat
parseResult _ = Unknown

------------------------------------------------------------
-- Utility functions
------------------------------------------------------------

-- | Setup the prelude in a solver monad
setupSMT :: FormulaSolver m => m ()
setupSMT = setup prelude
