import Test.Hspec
import Control.Monad

import Analysis.Symbolic (K, Vlu, simpleAnalysis)
import Analysis.Scheme.Prelude (DSto, AbstractCountM(..))
import Syntax.Scheme

-- Imports that are needed in the environment 
-- for running the tests

import Solver.Z3
import Solver
import qualified Symbolic.AST as F
import qualified Symbolic.SMT as SMT
import qualified Domain.Symbolic.Path as P
import Control.Monad.Layer
import Control.Monad.Identity (IdentityT (runIdentityT))
import qualified Data.Map as Map

type Sto = DSto K (Vlu K)
type Res = Vlu K

newtype EmptyCountT i m a = EmptyCountT (IdentityT m a) 
                        deriving (Applicative, Monad, Functor, MonadTrans, MonadLayer)

runEmptyCountT :: EmptyCountT i m a -> m a
runEmptyCountT (EmptyCountT m) = runIdentityT m

instance (Monad m) => AbstractCountM i (EmptyCountT i m) where 
   count = return Map.empty

runAnalysisAndTest :: (Res -> Sto -> IO a) -> String -> IO a
runAnalysisAndTest f =
   readFile >=> (either error return . parseString') >=> simpleAnalysis >=> uncurry f

withSolver :: EmptyCountT i (Z3Solver String) a -> IO a
withSolver ma = runZ3Solver $ runEmptyCountT (setup SMT.prelude >> ma)

formulaJoinTests :: Spec
formulaJoinTests =
   describe "formula joinNF" $ do
      it "should keep common constraints across paths" $
         let c1 = F.Atomic (F.IsTrue (F.Predicate "number?/v" [F.Variable "x0"]))
             c2 = F.Atomic (F.IsFalse (F.Predicate "real?/v" [F.Variable "x0"]))
             c3 = F.conjunction c1 c2
         in do
            result <- withSolver $ P.joinNF (P.formula2nf c1) (P.formula2nf c3)
            result `shouldBe` P.Conjunction (P.Atom (F.IsTrue (F.Predicate "number?/v" [F.Variable "x0"]))) P.Empty

      it "should arrive at an empty set if one of the paths does not have any constraints" $ do
         let c1 = F.Empty
             c2 = F.Atomic (F.IsTrue (F.Predicate "real?/v" [F.Variable "x0"]))
          in withSolver (P.joinNF (P.formula2nf c1) (P.formula2nf c2)) >>= (`shouldBe` P.Empty)

main :: IO ()
main = hspec $ do
   -- $(allTests "programs/test")
   formulaJoinTests
   return ()

