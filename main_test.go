package main

import "testing"

func TestSumToN(t *testing.T) {
	result := SumToN(10)
	if result != 55 {
		t.Errorf("SumToN(10) = %d; want 55", result)
	}
}
