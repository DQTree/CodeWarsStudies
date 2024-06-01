require_relative '../../lib/_4kyu/zeroes'

RSpec.describe "Basic cases" do
    it "can be solved with direct computation" do
      expect(zeroes(10, 10)).to eq(2), "10_10! has 2 zeroes"
      expect(zeroes(16, 16)).to eq(3), "10_16! has 3 zeroes"
    end
  
    it "basic quirks" do
      expect(zeroes(40, 10)).to eq(2), "base > 36"
      expect(zeroes(17, 16)).to eq(0), "prime base - no zeroes"
      expect(zeroes(7, 50)).to eq(8), "prime base & higher powers"
      expect(zeroes(100, 50)).to eq(6), "base = 100"
    end
  
    it "considers a full base decomposition" do
      expect(zeroes(12, 26)).to eq(10), "p1^2 ~ p2 >>>"
      expect(zeroes(12, 27)).to eq(11), "p1^2 ~ p2 <<<"
      expect(zeroes(12, 28)).to eq(12), "p1^2 ~ p2 <<<"
      expect(zeroes(12, 32)).to eq(14), "p1^2 ~ p2 >>>"
      expect(zeroes(12, 33)).to eq(15), "p1^2 ~ p2 ==="
      expect(zeroes(80, 49)).to eq(10), "p1 ~ p2^3 <<<"
      expect(zeroes(80, 50)).to eq(11), "p1 ~ p2^3 >>>"
      expect(zeroes(80, 52)).to eq(12), "p1 ~ p2^3 ==="
    end
  
    it "[relatively] big prime in base" do
      expect(zeroes(17, 100)).to eq(5), "single"
      expect(zeroes(170, 100)).to eq(5), "composite (2)"
      expect(zeroes(221, 100)).to eq(5), "composite (3)"
    end
  end