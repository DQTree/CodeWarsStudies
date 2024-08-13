require_relative '../../lib/_7kyu/highAndLow'

RSpec.describe "HighAndLow tests" do
    it "should pass basic tests" do
        expect(high_and_low("8 3 -5 42 -1 0 0 -9 4 7 4 -4")).to eq("42 -9")
        expect(high_and_low("1 2 3")).to eq("3 1")
    end
  end