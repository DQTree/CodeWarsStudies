import codewars_test as test

from src.python.src._7kyu.jadenCasingStrings import to_jaden_case

@test.describe('Jaden casing tests')
def example_tests():
    @test.it('should pass basic tests')
    def it1():
        quote = "How can mirrors be real if our eyes aren't real"
        test.assert_equals("How Can Mirrors Be Real If Our Eyes Aren't Real", to_jaden_case(quote))
