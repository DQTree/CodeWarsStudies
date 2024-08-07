import codewars_test as test

from src.python.src._5kyu.alphaNumeric import alphaNumeric

@test.describe("Sample Tests")
def sample_tests():
    tests = [
        ("hello world_", False),
        ("PassW0rd", True),
        ("     ", False)
    ]
    for s, b in tests:
        @test.it('alphanumeric("' + s + '")')
        def sample_test():
            test.assert_equals(alphaNumeric(s), b)