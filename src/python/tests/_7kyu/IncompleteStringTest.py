import codewars_test as test

from _7kyu.incompleteString import testit

@test.describe("Incomplete string tests")
def example_tests():
    @test.it("should return s ?")
    def it1():
        test.assert_equals(testit(""), "", "")
        test.assert_equals(testit("a"), "a", "")
        test.assert_equals(testit("b"), "b", "")
        
    @test.it("should return s.substr(0,1) ?")
    def it2():
        test.assert_equals(testit("aa"), "a", "")
        test.assert_equals(testit("ab"), "a", "")
        test.assert_equals(testit("bc"), "b", "")
        
    @test.it("should return s.substr(0,s.length/2) ?")
    def it3():
        test.assert_equals(testit("aaaa"), "aa", "")
        test.assert_equals(testit("aaaaaa"), "aaa", "")