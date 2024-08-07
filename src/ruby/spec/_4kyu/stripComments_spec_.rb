require_relative '../../lib/_4kyu/stripComments.rb'

RSpec.describe("Strips comments") do
  it "should pass basic tests" do
    check_comments("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"], "apples, pears\ngrapes\nbananas")
    check_comments("Q @b\nu\ne -e f g", ["@", "-"], "Q\nu\ne")
  end
end

def check_comments(input, markers, expected)
  actual = strip_comments(input, markers)
  expect(actual).to eq(expected)
end
