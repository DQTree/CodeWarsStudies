import { assert } from "chai";
import { describe, it } from 'mocha'
import { parseInt } from "../../src/_4kyu/parseInt.mjs";

describe("Tests", () => {
    it("test", () => {
        assert.equal(parseInt('one'), 1);
        assert.equal(parseInt('twenty'), 20);
        assert.equal(parseInt('two hundred forty-six'), 246);
        assert.equal(parseInt('one thousand three hundred thirty-seven'), 1337);
        assert.equal(parseInt('five thousand five hundred eighty-six'), 5586);
        assert.equal(parseInt('twenty-six thousand three hundred and fifty-nine'), 26359);
        assert.equal(parseInt('eighty-eight thousand two hundred and seventy-one'), 88271);
    });
});
