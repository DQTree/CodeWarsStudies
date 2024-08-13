import codewars_test as test

from src.python.src._5kyu.rot13 import rot13


@test.describe('Rot13 tests')
def example_tests():
    @test.it("should pass basic tests")
    def it1():
        test.assert_equals(rot13("EBG13 rknzcyr."), "ROT13 example.")
        test.assert_equals(rot13(
            "How can you tell an extrovert from an introvert at NSA? Va gur ryringbef, gur rkgebireg ybbxf ng gur BGURE "
            "thl'f fubrf."),
                        "Ubj pna lbh gryy na rkgebireg sebz na vagebireg ng AFN? In the elevators, the extrovert "
                        "looks at the OTHER guy's shoes.")
        test.assert_equals(rot13("123"), "123")
        test.assert_equals(rot13("Guvf vf npghnyyl gur svefg xngn V rire znqr. Gunaxf sbe svavfuvat vg! :)"),
                        "This is actually the first kata I ever made. Thanks for finishing it! :)")
        test.assert_equals(rot13("@[`{"), "@[`{")
