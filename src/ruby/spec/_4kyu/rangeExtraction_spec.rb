require_relative '../../lib/_4kyu/rangeExtraction'

RSpec.describe('RangeExtracting tests') do
  it('should pass basic tests')do
    expect(range_extraction([-6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20])).to eq("-6,-3-1,3-5,7-11,14,15,17-20")
  end
end