defmodule ListHelper do
  @moduledoc """
   Calculating the sum of the list
  """
  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)
end
