require_relative '../../lib/_5kyu/zerosToEnd'

RSpec.describe "Zeros to end" do
  describe "Moves 0s to end of array" do
    it "should move 0s to last and maintain order" do
        expect(moveZeros([1,2,0,1,0,1,0,3,0,1])).to eq( [ 1, 2, 1, 1, 3, 1, 0, 0, 0, 0 ])
    end
  end
end
