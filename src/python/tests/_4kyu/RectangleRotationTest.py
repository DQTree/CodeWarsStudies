import codewars_test as test
from src.python.src._4kyu.rectangleRotation import rectangle_rotation


@test.describe('Rectangle rotation tests')
def desc1():
    @test.it("should pass basic tests")
    def it1():
        test.assert_equals(rectangle_rotation(6,4),23)
        test.assert_equals(rectangle_rotation(30,2),65)
        test.assert_equals(rectangle_rotation(8,6),49)
        test.assert_equals(rectangle_rotation(16,20),333)