package com.example

import org.junit.jupiter.api.Assertions.assertArrayEquals
import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Test

class AppTest {
    @Test
    fun testSumToN() {
        val result = App.sumToN(10)
        assertEquals(55, result, "sumToN(10) は 55 を返すべき")
    }

    @Test
    fun testBubbleSort() {
        val input = intArrayOf(5, 3, 8, 1, 2)
        val expected = intArrayOf(1, 2, 3, 5, 8)
        val result = App.bubbleSort(input)
        assertArrayEquals(expected, result, "bubbleSort は配列を正しくソートすべき")
    }

    @Test
    fun testFibonacci() {
        val input = 8
        val expected = 21
        val result = App.fibonacci(input)
        assertEquals(expected, result, "fibonacci(8) は 21 を返すべき")
    }
}
