<?php

require_once __DIR__ . '/../functions.php';

use PHPUnit\Framework\TestCase;

class FunctionsTest extends TestCase
{
    public function testSumToN()
    {
        // Arrange
        $n = 10;

        // Act
        $result = sum_to_n($n);

        // Assert
        $this->assertEquals(55, $result);
    }
    
    public function testBubbleSort()
    {
        // Arrange
        $input = [5, 3, 8, 1, 2];

        // Act
        $result = bubble_sort($input);

        // Assert
        $this->assertEquals([1, 2, 3, 5, 8], $result);
    }
}
