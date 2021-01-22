defmodule ListHelper do
  @doc """
    A range/2 function that takes two integers, from and to, and returns a list of all
    numbers in the given range
  """
  def range(from, to) do
    generate_range(from, to, [])
  end

  defp generate_range(from, to, list) when from > to, do: list

  defp generate_range(from, to, list) do
    generate_range(from, to - 1, [to | list])
  end
end
