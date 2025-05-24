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

// bubble_sort: バブルソートを行い、ソート済みの配列を返す
func BubbleSort(array []int) []int {
	n := len(array)
	result := make([]int, n)
	copy(result, array)
	for i := 0; i < n-1; i++ {
		for j := 0; j < n-i-1; j++ {
			if result[j] > result[j+1] {
				result[j], result[j+1] = result[j+1], result[j]
			}
		}
	}
	return result
}

// fibonacci: 常に0を返す
func Fibonacci(n int) int {
	return 0
}
