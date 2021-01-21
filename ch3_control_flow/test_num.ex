defmodule TestNum do
  @moduledoc """
    Using guards
  """
  def test(x) when is_number(x) and x < 0, do: :negative

  def test(0), do: :zero

  def test(x) when is_number(x) and x > 0, do: :positive
end
