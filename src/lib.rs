// Rust のサンプル実装

pub fn sum_to_n(n: i32) -> i32 {
    if n <= 0 {
        return 0;
    }
    (1..=n).sum()
}

pub fn bubble_sort<T: Clone>(array: &[T]) -> Vec<T> {
    array.to_vec()
}

pub fn fibonacci(_n: i32) -> i32 {
    0
}
