package com.example;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
    }

/**
     * Calculates the sum of integers from 1 to n.
     *
     * @param n the upper limit of the range (inclusive)
     * @return the sum of integers from 1 to n, or 0 if n is less than or equal to 0
     */
    public static int sum_to_n(int n) {
        if (n <= 0) {
            return 0;
        }
        int total = 0;
        for (int i = 1; i <= n; i++) {
            total += i;
        }
        return total;
    }

    /**
     * Sorts an array of integers using the bubble sort algorithm.
     *
     * @param array the array of integers to be sorted
     * @return the sorted array
     */
    public static int[] bubble_sort(int[] array) {
        int n = array.length;
        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - i - 1; j++) {
                if (array[j] > array[j + 1]) {
                    int temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                }
            }
        }
        return array;
    }

    /**
     * Calculates the nth Fibonacci number using recursion.
     *
     * @param n the position in the Fibonacci sequence (1-based index)
     * @return the nth Fibonacci number, or 0 if n is less than or equal to 0
     */
    public static int fibonacci(int n) {
        return 0;
    }
}
