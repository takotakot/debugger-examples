// バブルソートのテスト
#[cfg(test)]
mod tests {
    use debugger_examples::bubble_sort;

    #[test]
    fn test_bubble_sort_sample() {
        let input = vec![5, 3, 8, 1, 2];
        let expected = vec![1, 2, 3, 5, 8];
        let result = bubble_sort(&input);
        assert_eq!(result, expected);
    }
}
