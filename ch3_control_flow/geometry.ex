defmodule Geometry do
  @moduledoc """
    Multiclause function
  """
  def area({:rectangle, a, b}), do: a * b

  def area({:square, a}), do: a * a

  def area({:circle, r}), do: r * r * 3.14
end
