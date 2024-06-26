import { assert } from 'chai';
import { describe, it } from 'mocha'
import { domainName } from '../../src/_5kyu/domainName.mjs';

describe("Sample test", () => {
    it("Should pass sample tests", () => {
        assert.equal(domainName("http://google.com"), "google");
        assert.equal(domainName("http://google.co.jp"), "google");
        assert.equal(domainName("www.xakep.ru"), "xakep");
        assert.equal(domainName("https://youtube.com"), "youtube");
    })
})
