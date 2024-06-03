import assert from 'assert';
import { describe } from 'mocha';
import { disemvowel } from '../../src/_7kyu/disemvowelTrolls'

describe("Disemvowel", function() {
  it("should remove vowels", () => {
    assert.equal(disemvowel("This website is for losers LOL!"), "Ths wbst s fr lsrs LL!");
  })
})