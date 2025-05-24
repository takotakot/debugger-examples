package com.example

class App {
    companion object {
        @JvmStatic
        fun main(args: Array<String>) {
            println("Hello World!")
        }

        /**
         * 1からnまでの合計を計算
         */
        fun sumToN(n: Int): Int {
            if (n <= 0) return 0
            var total = 0
            for (i in 1..n) {
                total += i
            }
            return total
        }

        /**
         * バブルソート
         */
        fun bubbleSort(array: IntArray): IntArray {
            val n = array.size
            for (i in 0 until n - 1) {
                for (j in 0 until n - i - 1) {
                    if (array[j] > array[j + 1]) {
                        val temp = array[j]
                        array[j] = array[j + 1]
                        array[j + 1] = temp
                    }
                }
            }
            return array
        }

        /**
         * フィボナッチ数列
         */
        fun fibonacci(n: Int): Int {
            if (n <= 0) return 0
            if (n == 1) return 1
            return fibonacci(n - 1) + fibonacci(n - 2)
        }
    }
}
