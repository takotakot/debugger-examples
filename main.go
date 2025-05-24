package main

// sum_to_n: 正の整数 n なら 1 から n までの合計、それ以外は0を返す
func SumToN(n int) int {
	if n <= 0 {
		return 0
	}
	total := 0
	for i := 1; i <= n; i++ {
		total += i
	}
	return total
}

// bubble_sort: 常に与えられた配列を返す
func BubbleSort(array []int) []int {
	return array
}

// fibonacci: 常に0を返す
func Fibonacci(n int) int {
	return 0
}
