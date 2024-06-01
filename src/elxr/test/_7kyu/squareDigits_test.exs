defmodule TestSuite do
  use ExUnit.Case
  doctest Kata

  test "Sample tests" do
    Enum.each(
      [
        {0, 0},
        {4, 16},
        {9119, 811_181},
        {723_041, 49_490_161},
        {501_491, 250_116_811}
      ],
      fn {n, expected} ->
        actual = Kata.square_digits(n)
        assert actual == expected
      end
    )
  end
end
