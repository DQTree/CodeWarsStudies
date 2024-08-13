require_relative '../../lib/_6kyu/spinWords'

RSpec.describe "SpinWords tests" do
    it "should pass basic tests" do
        expect(spin_words("Welcome")).to eq("emocleW")
        expect(spin_words("Hey fellow warriors")).to eq("Hey wollef sroirraw")
    end
  end