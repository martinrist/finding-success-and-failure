module FindingSuccessAndFailure.Chapter1.ExercisesSpec where

import           FindingSuccessAndFailure.Chapter1.Exercises
import           Test.Hspec
import           Test.QuickCheck

testExercise1 :: Spec
testExercise1 =
    describe "Exercise 1 - `absValWithCase`" $ do
        it "Returns 0 when passed 0" $
            absValWithCase 0 `shouldBe` 0
        it "Returns +ve value when passed -ve value" $
            absValWithCase (-1 :: Integer) `shouldBe` 1
        it "Always returns a positive value" $
            property $ \x -> absValWithCase (x :: Int) >= 0
        it "Behaves the same as `absValWithIf`" $
            property $
            \x -> absValWithCase (x :: Integer) == absValWithIf x

spec :: Spec
spec = testExercise1
