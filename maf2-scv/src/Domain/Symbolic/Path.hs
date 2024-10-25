-- | The join of two path conditions is the most 
-- specific generalisation of both paths such 
-- that the path condition holds on both paths.
--
-- Note that we do not implement the standard 
-- lattice classes as they require pure computations 
-- to determine subsumption and least upper bounds,
-- whereas in this case external calls to specialized
-- solvers are needed for checking entailment 
-- and satisfiability.
module Domain.Symbolic.Path(Atom(..), NormalFormFormula(..), leq, subsumes, joinNF, join, formula2nf, nf2formula) where

import Data.Set (Set)
import qualified Data.Set as Set
import qualified Symbolic.AST as Formula
import Solver
import Control.Monad (foldM)
import Control.Monad.Extra (ifM)
import Analysis.Monad.Store (AbstractCountM)

-- | Normal form used for representing path constraints,
-- it is a more restricted form of CNF that disallows disjunctions
data Atom i = Atom (Formula.Proposition i) | Negation (Formula.Proposition i) deriving (Eq, Ord, Show)
data NormalFormFormula i =
     Conjunction (Atom i) (NormalFormFormula i)
   | Empty deriving (Eq, Ord, Show)

-- | Create a formula in normal form from a set of atoms
fromAtoms :: Set (Atom i) -> NormalFormFormula i
fromAtoms = Set.foldr Conjunction Empty

-- | Create a formula in normal form with a single proposition
singleton :: Atom i -> NormalFormFormula i
singleton = flip Conjunction Empty

-- | Merge two formulae in normal form together
merge :: NormalFormFormula i -> NormalFormFormula i -> NormalFormFormula i
merge Empty a = a
merge a Empty = a
merge (Conjunction a nf) (Conjunction a' nf') =
   Conjunction a (Conjunction a' (merge nf nf'))

-- | Collect all atoms in the normal form into a set of atoms
atoms :: Ord i => NormalFormFormula i -> Set (Atom i)
atoms (Conjunction a nf) = Set.insert a (atoms nf)
atoms Empty = Set.empty -- Set.singleton (Atom Formula.Tautology)

-- | Translate an atom to a formula
atom2formula :: Atom i -> Formula.Formula i
atom2formula (Atom a) = Formula.Atomic a
atom2formula (Negation a) = Formula.Negation (Formula.Atomic a)

-- | Translate a formula in normal form to a regular formula
nf2formula :: Ord i => NormalFormFormula i -> Formula.Formula i
nf2formula (Conjunction a Empty) = atom2formula a
nf2formula (Conjunction a nf) =
   Formula.conjunction (atom2formula a) (nf2formula nf)
nf2formula Empty = Formula.Empty

-- | Translate a regular formula to normal form. 
--
-- Note that not all formulae can be translated to this normal form 
-- as the normal form only contains conjunctions, negations on atoms 
-- and the atoms themselves. 
--
-- As such, the set of allowed formulae is restricted to formulae consisting only 
-- of these elements, all other valid formulae such as implications and disjunctions
-- result in an error.
--
-- Fortunately, a path constraint in a symbolic execution engine can 
-- only consruct paths that consists of conjunctions, atoms and negations 
-- over them, so calls to this function should never fail.
formula2nf :: Formula.Formula i -> NormalFormFormula i
formula2nf (Formula.Atomic a) =
   singleton (Atom a)
formula2nf Formula.Empty = Empty
formula2nf (Formula.Negation (Formula.Atomic a)) =
   singleton (Negation a)
formula2nf (Formula.Conjunction fs) =
   foldr1 merge (map formula2nf (Set.toList fs))
formula2nf (Formula.Negation _) =
   error "negations can only occur at the atom level"
formula2nf (Formula.Implies _ _) =
   error "implications cannot be translated into the normal form"
formula2nf (Formula.Disjunction _) =
   error "disjunctions cannot be translated into the normal form"

-- | Is the second formula entailed by the first formula, if so, the second 
-- formula is more general than the first and therefore 'bigger'.
leq :: (AbstractCountM i m, FormulaSolver i m) => Formula.Formula i -> Formula.Formula i -> m Bool
leq f1 f2 = isCertainlyUnfeasible (Formula.Negation (Formula.Implies f1 f2))

-- | Subsumption is the same as `leq` but flipped.
subsumes :: (AbstractCountM i m, FormulaSolver i m) => Formula.Formula i -> Formula.Formula i -> m Bool
subsumes = flip leq

-- | The least upper bound of two path constraints is the 
-- most specific generalized constraint that covers both paths.
--
-- Put differently:
--
-- let r = join p q for path constraints p and q 
-- such that p \/ q |= r
joinNF :: (Ord i, AbstractCountM i m, FormulaSolver i m) => NormalFormFormula i -> NormalFormFormula i -> m (NormalFormFormula i)
joinNF p q = fmap fromAtoms r
   where as = Set.union (atoms p) (atoms q)
         c  = Formula.disjunction (nf2formula p) (nf2formula q)
         r  = foldM (\s a -> ifM (leq c (nf2formula (fromAtoms (Set.insert a s))))
                                 (return $ Set.insert a s)
                                 (return s))
                    Set.empty
                    as

-- | Joins two formulas together by converting them to normal form 
-- and joining them using @joinNF@.
join :: (Ord i, AbstractCountM i m, FormulaSolver i m) => Formula.Formula i -> Formula.Formula i -> m (Formula.Formula i) 
join p1 p2 = nf2formula <$> joinNF (formula2nf p1) (formula2nf p2)
