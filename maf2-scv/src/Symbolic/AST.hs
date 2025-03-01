{-# LANGUAGE DeriveGeneric, PatternSynonyms #-}
{-# LANGUAGE TupleSections #-}
-- | Specification of the symbolic language
-- used for encoding constraints generated by the
-- program under analysis.
module Symbolic.AST
  ( SolverResult (..),
    Formula (..),
    disjunction,
    conjunction,
    Proposition (..),
    Literal (..),
    SelectVariable (..),
    StrictSelectVariable(..),
    isSat,
    isUnsat,
    isUnknown,
    emptyPC,
    emptyFormula,
    PC,
    Model(..),
    mapVariables,
    Simplification(..),
    MapVariables(..)
  )
where

import Syntax.Scheme (Span)
import Data.Set (Set)
import Data.List (intercalate)
import qualified Data.Set as Set
import GHC.Generics
import Control.DeepSeq
import Data.Map (Map)
import Control.Lens (strict)
import Lattice.Class (PartialOrder (leq))

-- | A literal as they appear in a source program
data Literal
  = Num !Integer
  | Rea !Double
  | Str !String
  | Boo !Bool
  | Cha !Char
  | Sym !String
  | -- | a behavior of an actor
    Beh
  | -- | a contract monitor
    Mon
  | Nil
  | Unsp
  | Actor !(Maybe Span)
  -- | A type marker for a pair, can be used by an analysis 
  -- to render a "top pair" value.
  | Pair
  deriving (Eq, Ord, Generic)

instance NFData Literal

instance Show Literal where
   show (Num n) = show n
   show (Rea d) = show d
   show (Str s) = show s
   show (Boo b) = show b
   show (Cha c) = show c
   show (Sym s) = s
   show Beh = "beh"
   show Mon = "mon"
   show Nil = "()"
   show Unsp = "#u"
   show (Actor _) = "α"
   show Pair = "pai"

-- | A proposition consists of an
-- application of a primitive predicate,
-- or of a single variable holding a particular truth value.
--
-- All variables for our propositions are universivelly
-- quantified.
data Proposition i
  = Variable !i      -- ^ a symbolic variable represent by @i@
  | Function !String -- ^ a built-in SMTlib function
  | Literal  !Literal
  | -- | assertion that the proposition's truth value is "true"
    IsTrue   !(Proposition i)
  | -- | assertion that the proposition's truth value is "false
    IsFalse  !(Proposition i)
  | -- | an atomic predicate
    Predicate   !String ![Proposition i]
  | Application !(Proposition i) ![Proposition i]
  -- | A statement that is always true
  | Tautology
  -- | All assertions fail automatically
  | Fail
   -- | Generate an unquantified fresh variable
   -- while keeping track of the supposed set 
   -- of variables it might include.
  | Fresh (Set i)
  | Bottom
  deriving (Eq, Ord, Generic)

instance (NFData i) => NFData (Proposition i)

-- | Make proposition showable
instance (Show i) => Show (Proposition i) where
   show (Variable i)  = show i
   show (Function f)  = f
   show (Literal lit) = show lit
   show (IsTrue p)    = "true?/v(" ++ show p ++ ")"
   show (IsFalse p)   = "false?/v(" ++ show p ++ ")"
   show (Fresh vrs)     = "fresh@[" ++ intercalate "," (map show (Set.toList vrs)) ++ "]"
   show Tautology     = "true"
   show Bottom        = "⊥"
   show (Predicate nam p) = nam ++ "(" ++ intercalate "," (map show p) ++")"
   show (Application p1 p2) = show p1 ++ "(" ++ intercalate "," (map show p2) ++ ")#"
   show Fail = "fail"

-- | Inductively defined formulae, these include
-- conjunction, disjunction negation and atomic formulas.
data Formula i
  = Conjunction !(Set (Formula i))
  | Disjunction !(Set (Formula i))
  | Implies !(Formula i) !(Formula i)
  | Negation !(Formula i)
  | Atomic !(Proposition i)
  | Empty
  deriving (Eq, Ord, Generic)

instance NFData i => NFData (Formula i)

-- | Create a conjunction of two formulas
conjunction' :: Ord i => Formula i -> Formula i -> Formula i
conjunction' (Conjunction f1) (Conjunction f2) = Conjunction $ Set.union f1 f2
conjunction' f1 (Conjunction f2) = Conjunction $ Set.union (Set.singleton f1) f2
conjunction' f1 f2 = Conjunction $ Set.fromList [f1, f2]

conjunction :: Ord i => Formula i -> Formula i -> Formula i
conjunction f1 f2 = simplify $ conjunction' f1 f2

-- | Create a disjunction of two formulas
disjunction :: Ord i => Formula i -> Formula i -> Formula i
disjunction (Disjunction f1) (Disjunction f2) = Disjunction $ Set.union f1 f2
disjunction f1 (Disjunction f2) = Disjunction $ Set.union (Set.singleton f1) f2
disjunction f1 f2 = Disjunction $ Set.fromList [f1, f2]

-- | Create an empty formula
emptyFormula :: Formula i
emptyFormula = Empty

-- | The path condition is an unordered disjunction of formulas
type PC i = Set (Formula i)

emptyPC :: PC i
emptyPC = Set.singleton Empty

-- | Make formulas showable
instance (Show i) => Show (Formula i) where
   show (Conjunction fs) = intercalate " /\\ " (map show (Set.toList fs))
   show (Disjunction fs) = intercalate " \\/" (map show (Set.toList fs))
   show (Implies f1 f2) = show f1 ++ "=>" ++ show f2
   show (Negation f1) = "¬" ++ show f1
   show (Atomic p) = "(" ++ show p ++ ")"
   show Empty = "ϵ"

-- | Select all variables that may be in the formula
class SelectVariable v i |  v -> i where
  variables :: v -> Set i

-- | Variables can be selected from formulas
instance Ord i => SelectVariable (Formula i) i where
  variables (Conjunction fs) = Set.unions (Set.map variables fs)
  variables (Disjunction fs) = Set.unions (Set.map variables fs)
  variables (Negation f) = variables f
  variables (Implies f1 f2) = variables f1 `Set.union` variables f2
  variables (Atomic prop) = variables prop
  variables Empty = Set.empty

-- | Variables can be selected from propositions
instance (Ord i) => SelectVariable (Proposition i) i where
  variables (Variable nam) = Set.singleton nam
  variables (IsTrue prop) = variables prop
  variables (IsFalse prop) = variables prop
  variables (Predicate _ props) = mconcat (map variables props)
  variables (Literal _) = Set.empty
  variables Tautology = Set.empty
  variables (Fresh vrs) = vrs
  variables Bottom = Set.empty
  variables (Application p1 p2) = variables p1 `Set.union` mconcat (map variables p2)
  variables (Function _) = Set.empty
  variables Fail = Set.empty

-- | Select all variables that certainly are in the formula
class StrictSelectVariable v i | v -> i where
   strictVariables :: v -> Set i
-- | For formulas @strictVariables@ is the same as @variables@
instance Ord i => StrictSelectVariable (Formula i) i where
  strictVariables (Conjunction fs) = Set.unions (Set.map strictVariables fs)
  strictVariables (Disjunction fs) = Set.unions (Set.map strictVariables fs)
  strictVariables (Negation f) = strictVariables f
  strictVariables (Implies f1 f2) = strictVariables f1 `Set.union` strictVariables f2
  strictVariables (Atomic prop) = strictVariables prop
  strictVariables Empty = Set.empty
-- | For proposition @strictVariables@ is mostly the same as @variables@ but returns 
-- the empty set for the fresh proposition since no real variables occur in fresh 
-- propositions.
instance (Ord i) => StrictSelectVariable (Proposition i) i where
  strictVariables (Variable nam) = Set.singleton nam
  strictVariables (IsTrue prop) = strictVariables prop
  strictVariables (IsFalse prop) = strictVariables prop
  strictVariables (Predicate _ props) = mconcat (map strictVariables props)
  strictVariables (Literal _) = Set.empty
  strictVariables Tautology = Set.empty
  strictVariables (Fresh _) = Set.empty
  strictVariables Bottom = Set.empty
  strictVariables (Application p1 p2) = strictVariables p1 `Set.union` mconcat (map strictVariables p2)
  strictVariables (Function _) = Set.empty
  strictVariables Fail = Set.empty

------------------------------------------------------------
-- Solver results
------------------------------------------------------------

-- | The model of an SMT formula is an assignment of variables 
-- to their values
newtype Model i = Model { getModel :: Map i (Set Literal) }
              deriving (Ord, Eq, Show)

-- |  The result of solving an SMT formula.
data SolverResult
  = Sat
  | Unsat
  | Unknown
  deriving (Show)

isSat :: SolverResult -> Bool
isSat Sat = True
isSat _ = False

isUnsat :: SolverResult -> Bool
isUnsat Unsat = True
isUnsat _ = False

isUnknown :: SolverResult -> Bool
isUnknown Unknown = True
isUnknown _ = False


------------------------------------------------------------
-- Partial ordering
------------------------------------------------------------

instance (Ord i, Eq i) => PartialOrder (Proposition i) where
  leq (Variable i1) (Variable i2) = i1 == i2
  leq (Function f1) (Function f2) = f1 == f2
  leq (IsTrue prop1) (IsTrue prop2) = leq prop1 prop2
  leq (IsFalse prop1) (IsFalse prop2) = leq prop1 prop2
  leq (Predicate nam1 props1) (Predicate nam2 props2) =
    length props1 == length props2 &&
    nam1 == nam2 && all (uncurry leq) (zip props1 props2)
  leq (Application operator1 operands1) (Application operator2 operands2) =
    length operands1 == length operands2 &&
    leq operator1 operator2 && all (uncurry leq) (zip operands1 operands2)
  leq (Fresh vrs1) (Fresh vrs2) = Set.isSubsetOf vrs1 vrs2
  leq Tautology Tautology = True
  leq Bottom Bottom = True
  leq Fail Fail = True
  leq _ _ = False

instance (Ord i, Eq i) => PartialOrder (Formula i) where
  leq (Conjunction fs1) (Conjunction fs2) =
    -- NOTE: we assume that @Set.toList@ returns the same ordering for different sets of @Fresh@
    -- in the formula, if this is not the case, the result is still safe since it will return
    -- False anyway
    Set.size fs1 == Set.size fs2 && all (uncurry leq) (zip (Set.toList fs1) (Set.toList fs2))
  leq (Disjunction fs1) (Disjunction fs2) =
    Set.size fs1 == Set.size fs2 && all (uncurry leq) (zip (Set.toList fs1) (Set.toList fs2))
  leq (Implies ant1 csq1) (Implies ant2 csq2) =
    leq ant1 ant2 && leq csq1 csq2
  leq (Negation f1) (Negation f2) = leq f1 f2
  leq (Atomic prop1) (Atomic prop2) = leq prop1 prop2
  leq Empty Empty = True
  leq _ _ = False



------------------------------------------------------------
-- Transformation of the path constraint
------------------------------------------------------------

class MapVariables e where
   mapVariables :: Ord i => (i -> i ) -> e i -> e i

instance MapVariables Proposition where
   mapVariables f (Variable i) = Variable (f i)
   mapVariables _ fun@(Function _) = fun
   mapVariables _ lit@(Literal _) = lit
   mapVariables f (IsTrue prop) = IsTrue (mapVariables f prop)
   mapVariables f (IsFalse prop) = IsFalse (mapVariables f prop)
   mapVariables f (Predicate nam props) = Predicate nam (map (mapVariables f) props)
   mapVariables f (Application operator operands) = Application (mapVariables f operator) (map (mapVariables f) operands)
   mapVariables _ Tautology = Tautology
   mapVariables f (Fresh vrs) = Fresh (Set.map f vrs)
   mapVariables _ Bottom = Bottom
   mapVariables _ Fail = Fail


instance MapVariables Formula where
   mapVariables f (Conjunction fs) = Conjunction $ Set.map (mapVariables f) fs
   mapVariables f (Disjunction fs) = Disjunction $ Set.map (mapVariables f) fs
   mapVariables f (Implies f1 f2)  = Implies (mapVariables f f1) (mapVariables f f2)
   mapVariables f (Negation prop) = Negation (mapVariables f prop)
   mapVariables f (Atomic prop) = Atomic (mapVariables f prop)
   mapVariables _ Empty = Empty

------------------------------------------------------------
-- Simplifications
------------------------------------------------------------

class Simplification v where
   simplify :: v -> v

instance (Eq i) => Simplification (Proposition i) where
   simplify (Predicate "real?/v" [Literal (Rea _)]) = Literal $ Boo True
   simplify (Predicate "real?/v" [Literal (Num _)]) = Literal $ Boo True
   simplify (Predicate "integer?/v" [Literal (Num _)]) = Literal $ Boo True
   simplify (Predicate "integer?/v" [Literal _]) = Literal $ Boo False
   simplify (Predicate "or?/v" [Literal (Boo a), Literal (Boo b)]) = Literal $ Boo (a || b)
   simplify (Predicate "and?/v" [Literal (Boo a), Literal (Boo b)]) = Literal $ Boo (a && b)
   simplify (IsTrue prop) = case simplify prop of
                               Literal (Boo True) -> Tautology
                               Literal (Boo False) -> Fail
                               simpl -> IsTrue simpl
   simplify (IsFalse prop) = case simplify prop of
                               Literal (Boo False) -> Tautology
                               Literal (Boo True)  -> Fail
                               simpl -> IsFalse simpl
   simplify v = v

instance (Eq i, Ord i) => Simplification (Formula i) where
   simplify (Conjunction cs)
      -- sat(False /\ _) = False
      | Set.member (Atomic Fail) cs = Atomic Fail
      -- sat(True /\ x) = sat(x)
      | otherwise = Conjunction $ Set.filter (/= Atomic Tautology) cs
   simplify f = f
