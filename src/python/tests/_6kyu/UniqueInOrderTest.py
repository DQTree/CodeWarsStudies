import codewars_test as test

from src.python.src._6kyu.uniqueInOrder import unique_in_order

@test.describe("Unique in order tests")
def fixed_tests():
    @test.it('should pass empty test cases')
    def it1():
        test.assert_equals(unique_in_order(""), [])
        test.assert_equals(unique_in_order([]), [])
        test.assert_equals(unique_in_order(()), [])

    @test.it('should pass singular char test cases')
    def it2():
        test.assert_equals(unique_in_order("A"), ["A"])
        test.assert_equals(unique_in_order(["A"]), ["A"])
        test.assert_equals(unique_in_order(("A",)), ["A"])

        
    @test.it('should multiple chars test cases')
    def it2():
        test.assert_equals(unique_in_order("AA"), ["A"])
        test.assert_equals(unique_in_order("AAAABBBCCDAABBB"), ["A", "B", "C", "D", "A", "B"])
    
    @test.it('should pass mixed casing cases')
    def it3():
        test.assert_equals(unique_in_order("AAAABBBCCDAABBB"), ["A", "B", "C", "D", "A", "B"])

    @test.it('should pass singular cases')
    def it4():
        test.assert_equals(unique_in_order([1, 2, 3, 3, -1]), [1, 2, 3, -1])
        test.assert_equals(unique_in_order(["a", "b", "b", "a"]), ["a", "b", "a"])
