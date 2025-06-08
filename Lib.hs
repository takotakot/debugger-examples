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

-- バブルソートを行う関数
bubble_sort :: [Int] -> [Int]
bubble_sort xs = bubbleSort xs (length xs)
  where
    bubbleSort xs 0 = xs
    bubbleSort xs n = bubbleSort (pass xs) (n-1)
    pass (x:y:zs)
      | x > y     = y : pass (x:zs)
      | otherwise = x : pass (y:zs)
    pass xs = xs

-- フィボナッチ数列を計算する関数
fibonacci :: Int -> Int
fibonacci n
  | n <= 0    = 0
  | n == 1    = 1
  | otherwise = fibonacci (n-1) + fibonacci (n-2)
