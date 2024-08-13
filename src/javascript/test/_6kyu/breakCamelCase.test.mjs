import { assert } from 'chai';
import { describe, it } from 'mocha'
import { breakCamelCase } from '../../src/_6kyu/breakCamelCase.mjs'

describe("Sample tests", () => {
    it("Sample test 1", () => {
        assert.strictEqual(breakCamelCase(""), "", `solution("")`);
    });
    it("Sample test 2", () => {
        assert.strictEqual(breakCamelCase("camelCasing"), "camel Casing", `solution("camelCasing")`);
    });
    it("Sample test 3", () => {
        assert.strictEqual(breakCamelCase("camelCasingTest"), "camel Casing Test", `solution("camelCasingTest")`);
    });
});