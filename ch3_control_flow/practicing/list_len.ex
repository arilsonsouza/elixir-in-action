defmodule ListHelper do
  @doc """
    A list_len/1 function that calculates the length of a list
  """
  def list_len(list) do
    get_list_length(0, list)
  end

  defp get_list_length(current_sum, []) do
    current_sum
  end

  defp get_list_length(current_sum, [_head | tail]) do
    get_list_length(current_sum + 1, tail)
  end
end
