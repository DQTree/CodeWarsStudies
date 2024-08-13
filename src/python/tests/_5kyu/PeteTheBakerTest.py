import codewars_test as test

from _5kyu.peteTheBaker import cakes

@test.describe('Testing Pete, the Baker')
def example_tests():
    @test.it('should be able to bake')
    def it1():         
        recipe = {"flour": 500, "sugar": 200, "eggs": 1}
        available = {"flour": 1200, "sugar": 1200, "eggs": 5, "milk": 200}
        test.assert_equals(cakes(recipe, available), 2, 'example #1')

    @test.it('should not be able to bake')
    def it2():
        recipe = {"apples": 3, "flour": 300, "sugar": 150, "milk": 100, "oil": 100}
        available = {"sugar": 500, "flour": 2000, "milk": 2000}
        test.assert_equals(cakes(recipe, available), 0, 'example #2')