defmodule AretheythesameTest do
  use ExUnit.Case
  import Aretheythesame, only: [comp: 2]

  test "Are they the Same" do
    IO.puts("Test 1")
    a = [121, 144, 19, 161, 19, 144, 19, 11]
    b = [11 * 11, 121 * 121, 144 * 144, 19 * 19, 161 * 161, 19 * 19, 144 * 144, 19 * 19]
    assert comp(a, b) == true
    IO.puts("Test 2")

    assert comp(
             [121, 144, 19, 161, 19, 144, 19, 11],
             [11 * 21, 121 * 121, 144 * 144, 19 * 19, 161 * 161, 19 * 19, 144 * 144, 19 * 19]
           ) == false

    IO.puts("Test 3")

    assert comp(
             [2, 2, 3],
             [4, 9, 9]
           ) == false
  end
end
