require_relative '../../lib/_5kyu/intToIPV4'

RSpec.describe "IntToIPV4 tests" do
  it "should pass basic tests" do
    expect(int32_to_ip(2154959208)).to eq("128.114.17.104")
    expect(int32_to_ip(0)).to eq("0.0.0.0")
    expect(int32_to_ip(2149583361)).to eq("128.32.10.1")
  end
end