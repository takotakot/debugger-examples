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
}
