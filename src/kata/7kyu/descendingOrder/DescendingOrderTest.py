import unittest
from descendingOrder import descending_order

class DescendingOrderTest(unittest.TestCase):
    def test_something(self):
        self.assertEqual(descending_order(0), 0)
        self.assertEqual(descending_order(15), 51)
        self.assertEqual(descending_order(123456789), 987654321)


if __name__ == '__main__':
    unittest.main()
