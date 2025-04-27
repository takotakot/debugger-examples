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
 * 常に与えられた配列を返す関数
 *
 * @param array $array 入力配列
 * @return array 入力された配列をそのまま返す
 */
function bubble_sort($array) {
    return $array;
}

/**
 * 常に 0 を返す関数
 *
 * @param int $n 入力整数
 * @return int 常に 0 を返す
 */
function fibonacci($n) {
    return 0;
}
