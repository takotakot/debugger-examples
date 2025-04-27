<?php

require_once __DIR__ . '/../functions.php';

use PHPUnit\Framework\TestCase;

/**
 * FunctionsTest class
 *
 * This class contains unit tests for the functions implemented in functions.php.
 * It uses PHPUnit as the testing framework.
 */
class FunctionsTest extends TestCase
{
    /**
     * Test the sum_to_n function.
     *
     * This test verifies that the sum_to_n function correctly calculates the sum of integers from 1 to n.
     */
    public function testSumToN()
    {
        // Arrange
        $n = 10;

        // Act
        $result = sum_to_n($n);

        // Assert
        $this->assertEquals(55, $result);
    }
    
    /**
     * Test the bubble_sort function.
     *
     * This test verifies that the bubble_sort function correctly sorts an array of integers in ascending order.
     */
    public function testBubbleSort()
    {
        // Arrange
        $input = [5, 3, 8, 1, 2];

        // Act
        $result = bubble_sort($input);

        // Assert
        $this->assertEquals([1, 2, 3, 5, 8], $result);
    }
    
    /**
     * Test the fibonacci function.
     *
     * This test verifies that the fibonacci function correctly calculates the nth Fibonacci number.
     */
    public function testFibonacci()
    {
        // Arrange
        $n = 8;

        // Act
        $result = fibonacci($n);

        // Assert
        $this->assertEquals(21, $result);
    }
}
