module LibSpec where

import Test.Hspec
import Lib

testAdd :: SpecWith ()
testAdd = describe "Test addition" $
    it "Adds two numbers" $
        add 1 1 `shouldBe` 2

spec :: Spec
spec =
    testAdd