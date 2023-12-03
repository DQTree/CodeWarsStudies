import unittest
from jadenCasingStrings import to_jaden_case

class JadenCasingStringsTest(unittest.TestCase):
    def test_something(self):
        quote = "How can mirrors be real if our eyes aren't real"
        self.assertEqual("How Can Mirrors Be Real If Our Eyes Aren't Real", to_jaden_case(quote))


if __name__ == '__main__':
    unittest.main()
