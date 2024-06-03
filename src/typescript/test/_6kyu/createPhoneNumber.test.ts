import assert from 'assert';
import { describe } from 'mocha';
import { createPhoneNumber } from '../../src/_6kyu/createPhoneNumber';

describe('Creates a phone number out of an array of 10 numbers', () => {
  it('Should pass sample tests', () => {
    assert.equal(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]), "(123) 456-7890");
    assert.equal(createPhoneNumber([1, 1, 1, 1, 1, 1, 1, 1, 1, 1]), "(111) 111-1111");
    assert.equal(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]), "(123) 456-7890");
  });
});