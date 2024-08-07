import codewars_test as test

from _7kyu.incompleteString import testit

@test.describe("Example Tests")
def example_tests():
    
    @test.it("return s ?")
    def test_it():
        test.assert_equals(testit(""), "", "")
        test.assert_equals(testit("a"), "a", "")
        test.assert_equals(testit("b"), "b", "")
        
    @test.it("return s.substr(0,1) ?")
    def test_it():
        test.assert_equals(testit("aa"), "a", "")
        test.assert_equals(testit("ab"), "a", "")
        test.assert_equals(testit("bc"), "b", "")
        
    @test.it("return s.substr(0,s.length/2) ?")
    def test_it():
        test.assert_equals(testit("aaaa"), "aa", "")
        test.assert_equals(testit("aaaaaa"), "aaa", "")