defmodule Kata do
  def square_digits(n) do
    n
    |> Integer.digits()
    |> Enum.map(&(&1 * &1))
    |> Enum.join("")
    |> String.to_integer()
  end
end
