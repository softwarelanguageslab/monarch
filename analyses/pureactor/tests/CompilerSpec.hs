module CompilerSpec where

import Data.Either (isLeft)
import Language.PureActor
import Test.Hspec

spec :: Spec
spec = do
  describe "compileString" $ do
    it "can parse integer literals" $ do
      compileString "1"
        `shouldSatisfy` (\case Right (Lit (IntLit 1) _) -> True; _ -> False)
    it "can parse a letrec form" $ do
      compileString "(letrec (x 1) x)"
        `shouldSatisfy` (\case Right (Letrec _ _ _ _) -> True; _ -> False)
    it "can parse a send form" $ do
      compileString "(send x ping x)"
        `shouldSatisfy` (\case Right (Send _ _ _ _) -> True; _ -> False)
    it "can parse a become form" $ do
      compileString "(become (ping (x) x))"
        `shouldSatisfy` (\case Right (Become _ _) -> True; _ -> False)
    it "can parse a spawn form" $ do
      compileString "(spawn (ping (x) x))"
        `shouldSatisfy` (\case Right (Spawn _ _) -> True; _ -> False)
    it "can parse a variable" $ do
      compileString "x"
        `shouldSatisfy` (\case Right (Var (Ide "x" _)) -> True; _ -> False)
    it "can recognize an invalid letrec with too few operands" $ do
      compileString "(letrec)"
        `shouldSatisfy` isLeft
    it "can recognize an invalid letrec with incorrect operands" $ do
      compileString "(letrec x 10 x)"
        `shouldSatisfy` isLeft
    it "can recognize an invalid letrec with values as binding names" $ do
      compileString "(letrec (10 x) x)"
        `shouldSatisfy` isLeft
    it "can recognize an invalid send with too few operands" $ do
      compileString "(send)"
        `shouldSatisfy` isLeft
    it "can recognize an invalid send with a tag and value missing" $ do
      compileString "(send x)"
        `shouldSatisfy` isLeft
    it "can recognize an invalid send with a value missing" $ do
      compileString "(send x ping)"
        `shouldSatisfy` isLeft
    it "can recognize an invalid send with a value as a tag" $ do
      compileString "(send x 10 10)"
        `shouldSatisfy` isLeft

