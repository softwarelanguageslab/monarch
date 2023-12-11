-- | Specification of the symbolic language
-- used for encoding constraints generated by the
-- program under analysis.
module Symbolic.AST(SolverResult(..), Formula(..), Proposition(..), Literal(..), SelectVariable(..), isSat, isUnsat, isUnknown) where

-- | A literal as they appear in a source program
data Literal   = Num  Integer
               | Rea  Double
               | Str  String
               | Boo  Bool
               | Cha  Char
               | Nil
               | Unsp
               deriving (Eq, Ord)

-- | A proposition consists of an
-- application of a primitive predicate, 
-- or of a single variable holding a particular truth value.
--
-- All variables for our propositions are universivelly  
-- quantified.
data Proposition = Variable  String
                 | Literal   Literal
                 | IsTrue    Proposition -- ^ assertion that the proposition's truth value is "true"
                 | IsFalse   Proposition -- ^ assertion that the proposition's trught value is "false
                 | Predicate String [Proposition]
                 -- | non-deterministic choice, both propositions could be valid, one of them or neither
                 | Choice    Proposition Proposition
                 | Fresh -- ^ Generate an unquantified fresh variable
                 -- | Representation of the bottom value, nothing can be derived from this and a
                 -- all assertions fail
                 | Bottom
                 deriving (Eq, Ord)

-- | Inductively defined formulae, these include
-- conjunction, disjunction negation and atomic formulas.
data Formula = Conjunction Formula Formula
             | Disjunction Formula Formula
             | Negation    Formula
             | Atomic      Proposition
             | Empty
             deriving (Eq, Ord)

-- | Select all variables in the formula
class SelectVariable v where
   variables :: v -> [String]

-- | Variables can be selected from formulas
instance SelectVariable Formula where
   variables (Conjunction f1 f2) = variables f1 ++ variables f2
   variables (Disjunction f1 f2) = variables f1 ++ variables f2
   variables (Negation f)        = variables f
   variables (Atomic prop)       = variables prop

-- | And they can be selected from propositions
instance SelectVariable Proposition where
   variables (Variable nam) = pure nam
   variables (IsTrue  prop) = variables prop
   variables (IsFalse prop) = variables prop
   variables (Predicate _ props) = mconcat (map variables props)
   variables (Choice p1 p2)      = variables p1 ++ variables p2
   variables (Literal _) = []
   variables Fresh       = []
   variables Bottom      = []

-- | The result of solving an SMT formula.
data SolverResult = Sat
                  | Unsat
                  | Unknown
                  deriving (Show)

isSat :: SolverResult -> Bool
isSat Sat = True 
isSat _   = False

isUnsat :: SolverResult -> Bool
isUnsat Unsat = True
isUnsat _     = False

isUnknown :: SolverResult -> Bool
isUnknown Unknown = True
isUnknown _       = False
