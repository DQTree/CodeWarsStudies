import codewars_test as test

from src.python.src._6kyu.countingDuplicates import duplicate_count

@test.describe('Count duplicate tests')
def desc1():
    @test.it("should pass basic tests")
    def it1():
        test.assert_equals(duplicate_count(""), 0)
        test.assert_equals(duplicate_count("abcde"), 0)
        test.assert_equals(duplicate_count("abcdeaa"), 1)
        test.assert_equals(duplicate_count("abcdeaB"), 2)
        test.assert_equals(duplicate_count("Indivisibilities"), 2)
