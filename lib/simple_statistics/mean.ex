defmodule SimpleStatistics.Mean do
  @doc ~S"""
  The mean is the sum of all values over the number of values.

  ## Examples

      iex> SimpleStatistics.Mean.mean([])
      nil
      iex> SimpleStatistics.Mean.mean([1,2,3,4,5])
      3.0
      iex> SimpleStatistics.Mean.mean([1.5,-2.1,3,4.5,5])
      2.38

  """
  def mean([]), do: nil

  @spec mean(nonempty_list(number)) :: float()
  def mean(list) do
    Enum.sum(list) / Kernel.length(list)
  end
end
