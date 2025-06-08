module Main (main) where

import Test.Hspec
import Lib (sum_to_n, bubble_sort)

main :: IO ()
main = hspec $ do
  describe "sum_to_n" $ do
    it "returns 55 when input is 10" $ do
      sum_to_n 10 `shouldBe` 55
  describe "bubble_sort" $ do
    it "sorts [5,3,8,1,2] to [1,2,3,5,8]" $ do
      bubble_sort [5,3,8,1,2] `shouldBe` [1,2,3,5,8]
