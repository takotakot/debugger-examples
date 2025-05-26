// フィボナッチ数列のテスト
#[cfg(test)]
mod tests {
    use debugger_examples::fibonacci;

    #[test]
    fn test_fibonacci_8() {
        let result = fibonacci(8);
        assert_eq!(result, 21);
    }
}
