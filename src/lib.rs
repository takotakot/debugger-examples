// Rust のサンプル実装

/// 1からnまでの合計を返す。nが0以下の場合は0を返す。
pub fn sum_to_n(n: i32) -> i32 {
    if n <= 0 {
        return 0;
    }
    (1..=n).sum()
}

/// 配列をバブルソートして返す。比較可能な任意型Tに対応。
pub fn bubble_sort<T: Ord + Clone>(array: &[T]) -> Vec<T> {
    let mut arr = array.to_vec();
    let n = arr.len();
    for i in 0..n {
        for j in 0..n - i - 1 {
            if arr[j] > arr[j + 1] {
                arr.swap(j, j + 1);
            }
        }
    }
    arr
}

/// n番目のフィボナッチ数を返す（未実装: 常に0を返す）
pub fn fibonacci(_n: i32) -> i32 {
    0
}
