defmodule ArabicToRoman do
  @romans %{
    1 => "I",
    4 => "IV",
    5 => "V",
    9 => "IX",
    10 => "X",
    40 => "XL",
    50 => "L",
    90 => "XC",
    100 => "C",
    400 => "CD",
    500 => "D",
    900 => "CM",
    1000 => "M"
  }

  def solution(number) do
    roman_numeral = ""
    keys = Enum.reverse(Map.keys(@romans))
    iterate(keys, number, roman_numeral)
  end

  defp iterate([], _number, result), do: result

  defp iterate([arabic | rest], number, result) do
    times = div(number, arabic)
    remainder = rem(number, arabic)
    roman_numeral = result <> String.duplicate(@romans[arabic], times)
    iterate(rest, remainder, roman_numeral)
  end
end
