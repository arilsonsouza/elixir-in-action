defmodule ListHelper do
  @doc """
    A positive/1 function that takes a list and returns another list that contains only
    the positive numbers from the input list
  """
  def positive(list) do
    filter_list(list, [])
  end

  defp filter_list([], list), do: Enum.reverse(list)

  defp filter_list([head | tail], list) when head > 0 do
    filter_list(tail, [head | list])
  end

  defp filter_list([_head | tail], list) do
    filter_list(tail, list)
  end
end
