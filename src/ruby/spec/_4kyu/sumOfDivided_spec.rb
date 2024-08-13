require_relative '../../lib/_4kyu/sumOfDivided'

RSpec.describe("SumOfDivided tests") do
  it "should pass basic test" do
  expect(
    sum_of_divided([12, 15])
  ).to eq(
    [ [2, 12], [3, 27], [5, 15] ]
  )
  end
end