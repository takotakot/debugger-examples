// Rust のサンプル実装

/// 1からnまでの合計を返す。nが0以下の場合は0を返す。
pub fn sum_to_n(n: i32) -> i32 {
    if n <= 0 {
        return 0;
    }
    (1..=n).sum()
}

/// 配列をバブルソートする（未実装: そのまま返す）
pub fn bubble_sort<T: Clone>(array: &[T]) -> Vec<T> {
    array.to_vec()
}

/// n番目のフィボナッチ数を返す（未実装: 常に0を返す）
pub fn fibonacci(_n: i32) -> i32 {
    0
}
