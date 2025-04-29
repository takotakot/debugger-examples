/**
 * 正の整数 n を与えると、1 から n までの合計を計算して返す
 *
 * @param n - 正の整数
 * @returns 1 から n までの合計。正の整数以外の場合は 0 を返す
 */
export function sum_to_n(n: number): number {
    if (n <= 0 || !Number.isInteger(n)) {
        return 0;
    }
    let total = 0;
    for (let i = 1; i <= n; i++) {
        total += i;
    }
    return total;
}

/**
 * 整数の配列をバブルソートでソートする関数
 *
 * @param array - ソート対象の整数配列
 * @returns ソート済みの整数配列
 */
export function bubble_sort(array: number[]): number[] {
    const n = array.length;
    for (let i = 0; i < n - 1; i++) {
        for (let j = 0; j < n - i - 1; j++) {
            if (array[j] > array[j + 1]) {
                // 値を交換
                [array[j], array[j + 1]] = [array[j + 1], array[j]];
            }
        }
    }
    return array;
}

/**
 * フィボナッチ数列の n 番目の値を計算する関数
 *
 * @param n - 正の整数
 * @returns フィボナッチ数列の n 番目の値。正の整数以外の場合は 0 を返す
 */
export function fibonacci(n: number): number {
    if (n <= 0 || !Number.isInteger(n)) {
        return 0;
    }
    if (n === 1) {
        return 1;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}
