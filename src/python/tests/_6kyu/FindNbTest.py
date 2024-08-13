import codewars_test as test

from _6kyu.findNb import find_nb

@test.describe("FindNB tests")
def fixed_tests():
    @test.it('should pass basic test cases')
    def it1():
        test.assert_equals(find_nb(4), -1)
        test.assert_equals(find_nb(16), -1)
    
    @test.it('should pass big number test cases')
    def it2():
        test.assert_equals(find_nb(4183059834009), 2022)
        test.assert_equals(find_nb(24723578342962), -1)
        test.assert_equals(find_nb(135440716410000), 4824)
        test.assert_equals(find_nb(40539911473216), 3568)
        test.assert_equals(find_nb(26825883955641), 3218)