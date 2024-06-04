import { testIt } from '../../src/_6kyu/thinkingAndTesting.mjs'
import { assert } from 'chai';
import { describe, it } from 'mocha'

describe("Tests", function () {
    it("test", function () {
        //Pay attention to color and shape, good luck!

        //Two color and two shape
        var ar = ["Red Square", "Green Triangle", "Red Triangle", "?"],
            answer = "Green Square"
        assert.equal(testIt(ar), answer)

        //Three color and three shape
        var ar = ["Red Square", "Red Circle", "Green Triangle", "Green Circle", "Blue Circle", "?", "Blue Triangle", "Blue Square", "Green Square"],
            answer = "Red Triangle"
        assert.equal(testIt(ar), answer)

        //Two color and three shape
        var ar = ["Red Square", "Red Circle", "Green Triangle", "Green Circle", "?", "Green Square"],
            answer = "Red Triangle"
        assert.equal(testIt(ar), answer)

    });
});
