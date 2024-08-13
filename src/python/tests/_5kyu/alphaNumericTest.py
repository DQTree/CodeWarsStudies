import codewars_test as test

from src.python.src._5kyu.alphaNumeric import alphaNumeric

@test.describe("Alphanumeric tests")
def sample_tests():
    tests = [
        ("hello world_", False),
        ("PassW0rd", True),
        ("     ", False)
    ]
    for s, b in tests:
        @test.it('should pass alphanumeric("' + s + '")')
        def sample_test():
            test.assert_equals(alphaNumeric(s), b)