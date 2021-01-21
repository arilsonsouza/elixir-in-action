defmodule ListHelper do
  @moduledoc """
    Tail-recursive sum of the first n natural numbers
  """
  def sum(list) do
    do_sum(0, list)
  end

  defp do_sum(current_sum, []) do
    current_sum
  end

  defp do_sum(current_sum, [head | tail]) do
    do_sum(head + current_sum, tail)
  end
end
