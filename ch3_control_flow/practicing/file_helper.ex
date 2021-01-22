defmodule FileHelper do
  @file_path File.cwd!() <> "/ch3_control_flow/practicing/file_helper.ex"
  @doc """
    A lines_lengths!/1 that takes a file path and returns a list of numbers, with
    each number representing the length of the corresponding line from the file.
  """
  def line_lengths(file_path \\ @file_path) do
    read_file!(file_path)
    |> Enum.map(&String.length(&1))
  end

  @doc """
    A longest_line_length!/1 that returns the length of the longest line in a file.
  """
  def longest_line_length!(file_path \\ @file_path) do
    read_file!(file_path)
    |> Stream.map(&String.length(&1))
    |> Enum.max()
  end

  @doc """
    A longest_line!/1 that returns the contents of the longest line in a file.
  """
  def longest_line!(file_path \\ @file_path) do
    read_file!(file_path)
    |> Enum.max_by(&String.length(&1))
  end

  @doc """
    A words_per_line!/1 that returns a list of numbers, with each number
    representingthe word count in a file.
  """
  def words_per_line!(file_path \\ @file_path) do
    read_file!(file_path)
    |> Stream.map(&String.split(&1))
    |> Enum.map(&length/1)
  end

  defp read_file!(file_path) do
    File.stream!(file_path)
    |> Stream.map(&String.replace(&1, "\n", ""))
  end
end
