require_relative '../../lib/_4kyu/explosiveSum'

RSpec.describe("ExplosiveSum tests") do
  it('should pass Very basic tests')do
    expect(exp_sum(1)).to eq(1)
    expect(exp_sum(2)).to eq(2)
    expect(exp_sum(3)).to eq(3)
  end
  it('should pass funcionality tests') do
    expect(exp_sum(4)).to eq(5)
    expect(exp_sum(5)).to eq(7)
    expect(exp_sum(10)).to eq(42)
  end
end