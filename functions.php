<?php

/**
 * 1 から n までの整数の合計を計算する関数
 *
 * @param int $n 入力整数
 * @return int 1 から n までの整数の合計
 */
function sum_to_n($n) {
    if ($n <= 0) {
        return 0;
    }
    $total = 0;
    for ($i = 1; $i <= $n; $i++) {
        $total += $i;
    }
    return $total;
}

/**
 * 与えられた配列をバブルソートアルゴリズムでソートする関数
 *
 * @param array $array ソート対象の配列
 * @return array ソートされた配列
 */
function bubble_sort($array) {
    $n = count($array);
    for ($i = 0; $i < $n - 1; $i++) {
        for ($j = 0; $j < $n - $i - 1; $j++) {
            if ($array[$j] > $array[$j + 1]) {
                // 要素の入れ替え
                $temp = $array[$j];
                $array[$j] = $array[$j + 1];
                $array[$j + 1] = $temp;
            }
        }
    }
    return $array;
}

/**
 * フィボナッチ数列の n 番目の値を返す関数
 *
 * @param int $n 入力整数
 * @return int フィボナッチ数列の n 番目の値
 */
function fibonacci($n) {
    if ($n <= 0) {
        return 0;
    }
    if ($n === 1) {
        return 1;
    }
    return fibonacci($n - 1) + fibonacci($n - 2);
}
