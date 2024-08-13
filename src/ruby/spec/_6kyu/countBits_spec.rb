require_relative '../../lib/_6kyu/countBits'

RSpec.describe "CountBits tests" do
    it "should pass basic tests" do
        expect(count_bits(0)).to eq(0)
        expect(count_bits(4)).to eq(1)
        expect(count_bits(7)).to eq(3)
        expect(count_bits(9)).to eq(2)
        expect(count_bits(10)).to eq(2)
    end
  end