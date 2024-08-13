require_relative '../../lib/_6kyu/simpleArrayRotation'

RSpec.describe "SimpleArrayRotation tests" do
    it "should pass basic tests" do    
        expect(solve([1,2,3,4,5,7])).to eq("A")
        expect(solve([7,1,2,3,4,5])).to eq("RA")
        expect(solve([2,3,4,5,7,12])).to eq("A")
        expect(solve([7,12,1,2,3,4,5])).to eq("RA")
        expect(solve([4,5,6,1,2,3])).to eq("RA")
        expect(solve([9,8,7,6,5])).to eq("D")
        expect(solve([5,9,8,7,6])).to eq("RD")
        expect(solve([6,5,9,8,7])).to eq("RD")
        expect(solve([9,6,7])).to eq("RA")
    end
  end