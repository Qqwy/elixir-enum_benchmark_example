defmodule FrequenciesMap do
  defstruct contents: %{}
  def new() do
    %FrequenciesMap{}
  end
end

defimpl Collectable, for: FrequenciesMap do
    def into(frequencies_map) do
    collector_fun = fn
      acc, {:cont, elem} ->
        Map.update(acc, elem, 1, &(&1+1))
      acc, :done ->
        %FrequenciesMap{contents: acc}
      _acc, :halt ->
        :ok
      end
      {frequencies_map.contents, collector_fun}
    end
  end

  defimpl Enumerable, for: FrequenciesMap do
    def count(frequencies_map) do
      {:ok, map_size(frequencies_map.contents)}
    end

    def member?(frequencies_map, {key, value}) do
      {:ok, match?(%{^key => ^value}, frequencies_map.contents)}
    end

    def member?(_frequencies_map, _other) do
      {:ok, false}
    end

    def slice(frequencies_map) do
      Enumerable.slice(frequencies_map.contents)
    end

    def reduce(frequencies_map, acc, fun) do
      Enumerable.List.reduce(:maps.to_list(frequencies_map.contents), acc, fun)
    end
  end
