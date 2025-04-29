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

    public static int[] bubble_sort(int[] array) {
        return array;
    }

    public static int fibonacci(int n) {
        return 0;
    }
}
