import unittest
from uniqueInOrder import unique_in_order

class UniqueInOrderTest(unittest.TestCase):
    def test_something1(self):
        self.assertEqual(unique_in_order(""), [])
        self.assertEqual(unique_in_order([]), [])
        self.assertEqual(unique_in_order(()), [])

    def test_something2(self):
        self.assertEqual(unique_in_order("A"), ["A"])
        self.assertEqual(unique_in_order(["A"]), ["A"])
        self.assertEqual(unique_in_order(("A",)), ["A"])

    def test_something3(self):
        self.assertEqual(unique_in_order("AA"), ["A"])
        self.assertEqual(unique_in_order("AAAABBBCCDAABBB"), ["A", "B", "C", "D", "A", "B"])

    def test_something4(self):
        self.assertEqual(unique_in_order("ABBCcA"), ["A", "B", "C", "c", "A"])

    def test_something5(self):
        self.assertEqual(unique_in_order([1, 2, 3, 3, -1]), [1, 2, 3, -1])
        self.assertEqual(unique_in_order(["a", "b", "b", "a"]), ["a", "b", "a"])

if __name__ == '__main__':
    unittest.main()
