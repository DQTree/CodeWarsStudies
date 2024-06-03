require_relative '../../lib/_6kyu/decodeMorseCode'

RSpec.describe("Example from description") do
    it "should convert" do
        expect(decodeMorse('.... . -.--   .--- ..- -.. .')).to eq('HEY JUDE')
    end
end