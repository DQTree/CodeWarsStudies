import assert from 'assert';
import { describe } from 'mocha';
import { isPangram } from '../../src/_6kyu/detectParagram';

describe("example", function() {
  it("test", function() {
    assert.strictEqual(isPangram("The quick brown fox jumps over the lazy dog."), true);
    assert.strictEqual(isPangram("This is not a pangram."), false);
  });
});