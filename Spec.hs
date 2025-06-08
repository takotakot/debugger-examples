module Main (main) where

import Test.Hspec
import Lib (sum_to_n)

main :: IO ()
main = hspec $ do
  describe "sum_to_n" $ do
    it "returns 55 when input is 10" $ do
      sum_to_n 10 `shouldBe` 55
