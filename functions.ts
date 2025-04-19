/**
 * 正の整数 n を与えると、1 から n までの合計を計算して返す。
 * @param n - 正の整数。
 * @returns 1 から n までの合計。正の整数以外の場合は 0 を返す。
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
 * 常に与えられた配列を返す関数。
 * @param array - 任意の整数配列。
 * @returns 入力された配列をそのまま返す。
 */
export function bubble_sort(array: number[]): number[] {
    return array;
}

/**
 * 常に 0 を返す関数。
 * @param n - 任意の整数。
 * @returns 常に 0 を返す。
 */
export function fibonacci(n: number): number {
    return 0;
}
