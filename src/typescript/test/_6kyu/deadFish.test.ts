import assert from 'assert';
import { deadFish } from '../../src/_6kyu/deadFish';

describe("Deadfish", function() {
  it("should pass basic cases", function() {
    assert.deepEqual(deadFish("iiisdoso"), [ 8, 64 ] );
    assert.deepEqual(deadFish("iiisxxxdoso"), [ 8, 64 ] );
  });
});