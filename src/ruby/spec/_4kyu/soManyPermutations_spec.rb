require_relative '../../lib/_4kyu/soManyPermutations'

RSpec.describe("Permutes strings") do
  it "can do basic test" do
    expect(
      permutations('ab').sort
    ).to eq(['ab', 'ba'])
    expect(
      permutations('aabb').sort
    ).to eq(['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa'])
  end
end