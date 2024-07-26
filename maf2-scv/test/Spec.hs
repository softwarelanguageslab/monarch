import Test.Hspec
import Test.Hspec.Core.Spec
import TH
import Control.Monad
import Domain

import Analysis.Symbolic (K, Vlu, simpleAnalysis)
import Analysis.Scheme.Prelude (DSto)
import Syntax.Scheme

-- Imports that are needed in the environment 
-- for running the tests
import Domain.Scheme.Modular
import Lattice.ConstantPropagationLattice (CP)
import Domain.Scheme.Derived.Pair
import Domain.Symbolic.Class

import Solver.Z3
import Solver
import qualified Symbolic.AST as F
import qualified Symbolic.SMT as SMT
import qualified Domain.Symbolic.Path as P

type Sto = DSto K (Vlu K)
type Res = Vlu K

runAnalysisAndTest :: (Res -> Sto -> IO a) -> String -> IO a
runAnalysisAndTest f =
   readFile >=> (either error return . parseString') >=> simpleAnalysis >=> uncurry f

withSolver :: Z3Solver a -> IO a
withSolver ma = runZ3Solver (setup SMT.prelude >> ma)

formulaJoinTests :: Spec
formulaJoinTests =
   describe "formula join" $ do
      it "should keep common constraints across paths" $
         let c1 = F.Atomic (F.IsTrue (F.Predicate "number?/v" [F.Variable "x0"]))
             c2 = F.Atomic (F.IsFalse (F.Predicate "real?/v" [F.Variable "x0"]))
             c3 = F.Conjunction c1 c2
         in do
            result <- withSolver $ P.join (P.formula2nf c1) (P.formula2nf c3)
            result `shouldBe` P.Conjunction (P.Atom (F.IsTrue (F.Predicate "number?/v" [F.Variable "x0"]))) P.Empty

      it "should arrive at an empty set if one of the paths does not have any constraints" $ do
         let c1 = F.Empty
             c2 = F.Atomic (F.IsTrue (F.Predicate "real?/v" [F.Variable "x0"]))
          in withSolver (P.join (P.formula2nf c1) (P.formula2nf c2)) >>= (`shouldBe` P.Empty)

main :: IO ()
main = hspec $ do
   -- $(allTests "programs/test")
   formulaJoinTests
   return ()

