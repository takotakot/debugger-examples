package com.example;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class AppTest {

    @Test
    public void testSumToN() {
        int result = App.sum_to_n(10);
        assertEquals(55, result, "The sum_to_n function should return 55 for input 10");
    }

    @Test
    public void testBubbleSort() {
        int[] input = {5, 3, 8, 1, 2};
        int[] expected = {1, 2, 3, 5, 8};
        int[] result = App.bubble_sort(input);
        assertArrayEquals(expected, result, "The bubble_sort function should sort the array correctly");
    }

    @Test
    public void testFibonacci() {
        int input = 8;
        int expected = 21;
        int result = App.fibonacci(input);
        assertEquals(expected, result, "The fibonacci function should return 21 for input 8");
    }
}
