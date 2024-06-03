require_relative '../../lib/_5kyu/lastDigit'

RSpec.describe "Last digit" do
  describe "Gets the last digit of a big number" do
    it "should return the last digits" do
        expect(last_digit(4, 1)).to eq(4)
        expect(last_digit(4, 2)).to eq(6)
        expect(last_digit(9, 7)).to eq(9)
        expect(last_digit(10, 10 ** 10)).to eq(0)
        expect(last_digit(2 ** 200, 2 ** 300)).to eq(6)
        expect(last_digit(3715290469715693021198967285016729344580685479654510946723, 68819615221552997273737174557165657483427362207517952651)).to eq(7)
    end
  end
end

