module Lib (
    sum_to_n,
    bubble_sort,
    fibonacci
) where

-- 1 から n までの合計を返す関数。n <= 0 の場合は 0 を返す。
sum_to_n :: Int -> Int
sum_to_n n
  | n <= 0    = 0
  | otherwise = sum [1..n]

-- 常に与えられた配列を返す関数
bubble_sort :: [Int] -> [Int]
bubble_sort xs = xs

-- 常に 0 を返す関数
fibonacci :: Int -> Int
fibonacci _ = 0
