require_relative '../../lib/_3kyu/helpTheGeneral'

RSpec.describe "HelpTheGeneral tests" do
  it "should be compatible with encoder" do
    expect(decode(encode("Hello World!"))).to eq("Hello World!")
  end
  it "should crack encoded message" do
    expect(decode("atC5kcOuKAr!")).to eq("Hello World!")
  end
end