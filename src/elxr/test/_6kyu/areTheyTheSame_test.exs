defmodule AretheythesameTest do
  use ExUnit.Case
  doctest Aretheythesame

  test "Are they the Same" do
    IO.puts("Test 1")
    a = [121, 144, 19, 161, 19, 144, 19, 11]
    b = [11 * 11, 121 * 121, 144 * 144, 19 * 19, 161 * 161, 19 * 19, 144 * 144, 19 * 19]
    assert Aretheythesame.comp(a, b) == true
    IO.puts("Test 2")

    assert Aretheythesame.comp(
             [121, 144, 19, 161, 19, 144, 19, 11],
             [11 * 21, 121 * 121, 144 * 144, 19 * 19, 161 * 161, 19 * 19, 144 * 144, 19 * 19]
           ) == false

    IO.puts("Test 3")

    assert Aretheythesame.comp(
             [2, 2, 3],
             [4, 9, 9]
           ) == false
  end
end
