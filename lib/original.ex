defmodule Original do
  def popular_tags(posts) do
    for post <- posts,
        tag <- post.tags do
      tag
    end
    |> Enum.frequencies()
    |> Enum.filter(fn {_tag, count} -> count > 1 end)
    |> Enum.map(&elem(&1, 0))
  end
end
