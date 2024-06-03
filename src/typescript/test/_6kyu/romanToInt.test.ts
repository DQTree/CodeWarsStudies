import assert from 'assert';
import { describe } from 'mocha';
import { romanToInteger } from '../../src/_6kyu/romanToInt';

describe("Converts roman numers to integers", function() {
  it('should pass', () => {
    assert.equal(romanToInteger('XXI'), 21);
    assert.equal(romanToInteger('I'), 1);
    assert.equal(romanToInteger('IV'), 4);
    assert.equal(romanToInteger('MMVIII'), 2008);
    assert.equal(romanToInteger('MDCLXVI'), 1666);
  });
});