defmodule UserExtraction do
  @moduledoc """
     With-based user extraction
  """
  def extract_user(user) do
    case Enum.filter(
           ["login", "email", "password"],
           &(not Map.has_key?(user, &1))
         ) do
      [] ->
        {:ok,
         %{
           login: user["login"],
           email: user["email"],
           password: user["password"]
         }}

      missing_fields ->
        {:error, Enum.map(missing_fields, fn field -> "#{field} is required" end)}
    end
  end
end
