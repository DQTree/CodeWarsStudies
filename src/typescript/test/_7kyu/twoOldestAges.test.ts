import assert from "assert";
import { twoOldestAges } from "../../src/_7kyu/twoOldestAges";

describe("Two Oldest Age", () => {
  it("twoOldestAges([1,5,87,45,8,8]) should return [45,87]", () => {
    assert.deepEqual(twoOldestAges([1, 5, 87, 45, 8, 8]), [45, 87]);
  });
});