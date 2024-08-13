require_relative '../../lib/_6kyu/highestScoringWord'

RSpec.describe "HighestScoringWord tests" do
  it "should pass basic tests" do
    expect(high('man i need a taxi up to ubud')).to eq('taxi')
    expect(high('what time are we climbing up the volcano')).to eq('volcano')
    expect(high('take me to semynak')).to eq('semynak')
    expect(high('aa b')).to eq('aa')
    expect(high('b aa')).to eq('b')
    expect(high('bb d')).to eq('bb')
    expect(high('d bb')).to eq('d') 
    expect(high('aaa b')).to eq('aaa')
  end
end