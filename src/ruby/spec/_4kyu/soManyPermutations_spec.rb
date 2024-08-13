require_relative '../../lib/_4kyu/soManyPermutations'

RSpec.describe("SoManyPermutations tests") do
  it "should pass basic test" do
    expect(
      permutations('ab').sort
    ).to eq(['ab', 'ba'])
    expect(
      permutations('aabb').sort
    ).to eq(['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa'])
  end
end