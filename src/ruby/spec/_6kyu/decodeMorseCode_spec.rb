require_relative '../../lib/_6kyu/decodeMorseCode'

RSpec.describe("DecodeMorseCode tests") do
    it "should pass basic tests" do
        expect(decode_morse('.... . -.--   .--- ..- -.. .')).to eq('HEY JUDE')
    end
end