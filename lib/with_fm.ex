defmodule WithFM do
  def popular_tags(posts) do
    for post <- posts,
        tag <- post.tags,
        into: FrequenciesMap.new() do
      tag
    end
    |> Enum.reduce([], fn
    {tag, count}, acc when count > 1 -> 
      [tag | acc]
    _, acc -> acc
    end)
  end
end
