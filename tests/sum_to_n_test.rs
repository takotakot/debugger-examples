#[cfg(test)]
mod tests {
    use debugger_examples::sum_to_n;

    #[test]
    fn test_sum_to_n_10() {
        let result = sum_to_n(10);
        assert_eq!(result, 55);
    }
}
