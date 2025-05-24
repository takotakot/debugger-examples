package main

import "testing"

func TestSumToN(t *testing.T) {
	result := SumToN(10)
	if result != 55 {
		t.Errorf("SumToN(10) = %d; want 55", result)
	}
}

func TestBubbleSort(t *testing.T) {
	input := []int{5, 3, 8, 1, 2}
	want := []int{1, 2, 3, 5, 8}
	got := BubbleSort(input)
	for i := range want {
		if got[i] != want[i] {
			t.Errorf("BubbleSort([5,3,8,1,2]) = %v; want %v", got, want)
			break
		}
	}
}

func TestFibonacci(t *testing.T) {
	result := Fibonacci(8)
	if result != 21 {
		t.Errorf("Fibonacci(8) = %d; want 21", result)
	}
}
