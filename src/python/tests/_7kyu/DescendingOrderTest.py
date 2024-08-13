import codewars_test as test

from src.python.src._7kyu.descendingOrder import descending_order


@test.describe('Descending order tests')
def desc1():
    @test.it("should pass basic tests")
    def it1():
        test.assert_equals(descending_order(0), 0)
        test.assert_equals(descending_order(15), 51)
        test.assert_equals(descending_order(123456789), 987654321)