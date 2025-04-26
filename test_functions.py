import unittest
from functions import sum_to_n, bubble_sort

class TestSumToN(unittest.TestCase):
    def test_sum_to_n(self):
        self.assertEqual(sum_to_n(10), 55)

class TestBubbleSort(unittest.TestCase):
    def test_bubble_sort(self):
        self.assertEqual(bubble_sort([5, 3, 8, 1, 2]), [1, 2, 3, 5, 8])

if __name__ == "__main__":
    unittest.main()
