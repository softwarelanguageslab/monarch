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

type Sto = DSto K Vlu
type Res = Vlu

runAnalysisAndTest :: (Res -> Sto -> IO a) -> String -> IO a
runAnalysisAndTest f =
   readFile >=> (either error return . parseString') >=> simpleAnalysis >=> uncurry f

main :: IO ()
main = hspec $ do $(allTests "programs/test")
