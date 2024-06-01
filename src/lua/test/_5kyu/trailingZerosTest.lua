package.path = package.path .. ";../../src/?.lua;../../src/_5kyu/?.lua"

local solution = require 'trailingZeros'

describe("Sample Tests", function()
    it("should pass sample tests", function()
        assert.are.same(0, solution.zeros(0))
        assert.are.same(1, solution.zeros(6))
        assert.are.same(7, solution.zeros(30))
    end)
end)
