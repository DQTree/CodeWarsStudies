import { assert } from 'chai';
import { describe, it } from 'mocha'
import { add } from '../../src/_5kyu/chainAdding.mjs';

describe("Sample Tests", () => {
    it("A single call should return the number passed in", () => {
        assert.equal(add(1), 1);
    });
    it("several calls", () => {
        assert.equal(add(1)(2), 3);
        assert.equal(add(1)(2)(3), 6);
        assert.equal(add(1)(2)(3)(4), 10);
        assert.equal(add(1)(2)(3)(4)(5), 15);
    });
    it("should be able to be mixed with numbers", () => {
        assert.equal(add(1)(2) + 3, 6);
    });
    it("Must be able to store values", () => {
        const a = add(1)(2);
        const b = add(3)(4);
        assert.equal(a, 3);
        assert.equal(b, 7);
    });
    it("Must be able to store curried functions", () => {
        const a = add(1)(2);
        assert.equal(a, 3);
        assert.equal(a(3), 6);
        assert.equal(a, 3);
    });
    it("Must be callable with a curried function", () => {
        const a = add(1)(2);
        const b = add(3)(4);
        assert.equal(a(b), 10);
        assert.equal(b(a), 10);
        assert.equal(a, 3);
        assert.equal(b, 7);
    });
});