import assert from 'assert';
import { describe } from 'mocha';
import { dnaStrand } from '../../src/_7kyu/complementaryDNA';

describe("dnaStrand", function() {
  it("Sample tests", function() {
    assert.strictEqual(dnaStrand("AAAA"),"TTTT","String AAAA is");
    assert.strictEqual(dnaStrand("ATTGC"),"TAACG","String ATTGC is");
    assert.strictEqual(dnaStrand("GTAT"),"CATA","String GTAT is");
  });
});