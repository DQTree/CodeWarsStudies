require_relative '../../lib/_4kyu/trailingZeroesNBase'

RSpec.describe "TrailingZeroesNBase tests" do
    it "should pass basic bases" do
      expect(trailing_zeros(15, 10)).to eq(3)
      expect(trailing_zeros(7, 2)).to eq(4)
    end
end