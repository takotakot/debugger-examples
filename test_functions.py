import unittest
from functions import sum_to_n, bubble_sort, fibonacci

class TestSumToN(unittest.TestCase):
    def test_sum_to_n(self):
        self.assertEqual(sum_to_n(10), 55)

class TestBubbleSort(unittest.TestCase):
    def test_bubble_sort(self):
        self.assertEqual(bubble_sort([5, 3, 8, 1, 2]), [1, 2, 3, 5, 8])

class TestFibonacci(unittest.TestCase):
    def test_fibonacci(self):
        self.assertEqual(fibonacci(8), 21)

if __name__ == "__main__":
    unittest.main()
