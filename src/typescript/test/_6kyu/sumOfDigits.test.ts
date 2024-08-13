import assert from 'assert';
import { describe } from 'mocha';
import { digitalRoot } from '../../src/_6kyu/sumOfDigits';

describe("Sum of digits tests", () => {
  it('should work for simple cases', () => {
    assert.equal(digitalRoot(16), 7);
    assert.equal(digitalRoot(456), 6 );
  });
});