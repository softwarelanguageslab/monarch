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
module Domain.Symbolic.Path where

import Data.Set (Set)
import qualified Data.Set as Set
import qualified Symbolic.AST as Formula
import Solver
import Control.Monad (foldM)
import Control.Monad.Extra (ifM)

-- | Normal form used for representing path constraints,
-- it is a more restricted form of CNF that disallows disjunctions
data Atom = Atom Formula.Proposition | Negation Formula.Proposition deriving (Eq, Ord, Show)
data NormalFormFormula =   
     Conjunction Atom NormalFormFormula
   | Empty deriving (Eq, Ord, Show)

-- | Create a formula in normal form from a set of atoms
fromAtoms :: Set Atom -> NormalFormFormula
fromAtoms = Set.foldr Conjunction Empty

-- | Create a formula in normal form with a single proposition
singleton :: Atom -> NormalFormFormula
singleton = flip Conjunction Empty 

-- | Merge two formulae in normal form together
merge :: NormalFormFormula -> NormalFormFormula -> NormalFormFormula
merge Empty a = a
merge a Empty = a
merge (Conjunction a nf) (Conjunction a' nf') = 
   Conjunction a (Conjunction a' (merge nf nf'))
   
-- | Collect all atoms in the normal form into a set of atoms
atoms :: NormalFormFormula -> Set Atom
atoms (Conjunction a nf) = Set.insert a (atoms nf)
atoms Empty = Set.empty

-- | Translate an atom to a formula
atom2formula :: Atom -> Formula.Formula
atom2formula (Atom a) = Formula.Atomic a
atom2formula (Negation a) = Formula.Negation (Formula.Atomic a)

-- | Translate a formula in normal form to a regular formula
nf2formula :: NormalFormFormula -> Formula.Formula
nf2formula (Conjunction a Empty) = atom2formula a
nf2formula (Conjunction a nf) = 
   Formula.Conjunction (atom2formula a) (nf2formula nf)
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
formula2nf :: Formula.Formula -> NormalFormFormula
formula2nf (Formula.Atomic a) = 
   singleton (Atom a)
formula2nf Formula.Empty = Empty
formula2nf (Formula.Negation (Formula.Atomic a)) = 
   singleton (Negation a)
formula2nf (Formula.Conjunction f1 f2) =
   merge (formula2nf f1) (formula2nf f2)
formula2nf (Formula.Negation _) = 
   error "negations can only occur at the atom level"
formula2nf (Formula.Entails _ _) = 
   error "implications cannot be translated into the normal form"
formula2nf (Formula.Disjunction _ _) = 
   error "disjunctions cannot be translated into the normal form"

-- | Is the second formula entailed by the first formula, if so, the second 
-- formula is more general than the first and therefore 'bigger'.
leq :: FormulaSolver m => Formula.Formula -> Formula.Formula -> m Bool
leq f1 f2 = isCertainlyUnfeasible (Formula.Negation (Formula.Entails f1 f2))

-- | Subsumption is the same as `leq` but flipped.
subsumes :: FormulaSolver m => Formula.Formula -> Formula.Formula -> m Bool 
subsumes = flip leq

-- | The least upper bound of two path constraints is the 
-- most specific generalized constraint that covers both paths.
--
-- Put differently:
--
-- let r = join p q for path constraints p and q 
-- such that p \/ q -> r
join :: FormulaSolver m => NormalFormFormula -> NormalFormFormula -> m NormalFormFormula
join p q = fmap fromAtoms r
   where as = Set.union (atoms p) (atoms q)
         c  = Formula.Disjunction (nf2formula p) (nf2formula q)
         r  = foldM (\s a -> ifM (leq c (nf2formula (fromAtoms (Set.insert a s))))
                                 (return $ Set.insert a s)
                                 (return s))
                    Set.empty 
                    as



