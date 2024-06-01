defmodule Aretheythesame do
  @spec comp([number], [number]) :: boolean
  def comp(a, b) do
    # Edge cases
    if length(a) == 0 && length(b) == 0 do
      true
    else
      if length(a) == 0 do
        false
      else
        squared_list = Enum.map(b, fn x -> round(:math.sqrt(x)) end)
        intersect(a, squared_list)
      end
    end
  end

  # Returns true if exists and count > 0
  defp intersect(list1, list2) do
    counts1 = count_elements(list1)
    counts2 = count_elements(list2)

    Enum.all?(counts1, fn {elem, count} ->
      case Map.get(counts2, elem) do
        count2 when is_integer(count2) and count2 >= count -> true
        _ -> false
      end
    end)
  end

  defp count_elements(list) do
    Enum.reduce(list, %{}, fn elem, acc ->
      Map.update(acc, elem, 1, &(&1 + 1))
    end)
  end
end
