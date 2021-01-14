defmodule TestPrivate do
  def dobule(a) do
    sum(a, a)
  end

  defp sum(a, b) do
    a + b
  end
end
