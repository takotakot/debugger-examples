import unittest
from functions import sum_to_n

class TestSumToN(unittest.TestCase):
    def test_sum_to_n(self):
        self.assertEqual(sum_to_n(10), 55)

if __name__ == "__main__":
    unittest.main()
