require_relative '../../lib/_4kyu/sumOfIntervals'

RSpec.describe("SumOfIntervals tests") do
  it("should pass basic intervals") do
    expect(sum_of_intervals([[1, 5]])).to eq(4)
    expect(sum_of_intervals([[1, 5], [6, 10]])).to eq(8)
    expect(sum_of_intervals([[1, 5], [1, 5]])).to eq(4)
    expect(sum_of_intervals([[1, 4], [7, 10], [3, 5]])).to eq(7)
  end

  it("should pass advanced intervals (big)") do
    expect(sum_of_intervals([[-1_000_000_000, 1_000_000_000]])).to eq(2_000_000_000)
    expect(sum_of_intervals([[0, 20], [-100_000_000, 10], [30, 40]])).to eq(100_000_030)
  end
end