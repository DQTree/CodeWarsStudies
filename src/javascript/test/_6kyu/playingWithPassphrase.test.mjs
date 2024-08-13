import { assert } from 'chai';
import { describe, it } from 'mocha'

import playPass from '../../src/_6kyu/playingWithPassphrase.mjs';

describe("Tests", function () {
    it("test", () => {
        assert.equal(playPass("I LOVE YOU!!!", 1), "!!!vPz fWpM J")

        assert.equal(playPass("MY GRANMA CAME FROM NY ON THE 23RD OF APRIL 2015", 2),
            "4897 NkTrC Hq fT67 GjV Pq aP OqTh gOcE CoPcTi aO")

    });
});