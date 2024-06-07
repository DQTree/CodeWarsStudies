require_relative '../../lib/_4kyu/topWords'

RSpec.describe("Most words frequently used in a text") do
  it "can pass basic tests" do
    expect(top_3_words("a a a  b  c c  d d d d  e e e e e")).to eq(["e", "d", "a"])
    expect(top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")).to eq(["e", "ddd", "aa"])
    expect(top_3_words("  //wont won't won't ")).to eq(["won't", "wont"])
    expect(top_3_words("  , e   .. ")).to eq(["e"])
    expect(top_3_words("  ...  ")).to eq([])
    expect(top_3_words("  '  ")).to eq([])
    expect(top_3_words("  '''  ")).to eq([])
  end

  it "can pass a whole paragraph" do
    expect(top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""")).to eq(["a", "of", "on"])
  end
end