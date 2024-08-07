
import assert from "assert";
import { decode, encode } from "../../src/_6kyu/vowelCode";

describe("Sample tests", function() {
  it("Encode", function() {
    assert.strictEqual(encode('hello'), 'h2ll4');
    assert.strictEqual(encode('How are you today?'), 'H4w 1r2 y45 t4d1y?');
    assert.strictEqual(encode('This is an encoding test.'), 'Th3s 3s 1n 2nc4d3ng t2st.');
  });
  it("Decode", function() {
    assert.strictEqual(decode('h2ll4'), 'hello');
    assert.strictEqual(decode('H4w 1r2 y45 t4d1y?'), 'How are you today?');
    assert.strictEqual(decode('Th3s 3s 1n 2nc4d3ng t2st.'), 'This is an encoding test.');
  });
});