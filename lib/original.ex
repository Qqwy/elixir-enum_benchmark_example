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

  def popular_tags_enum(posts) do
    posts
    |> Enum.flat_map(fn post -> post.tags end)
    |> Enum.frequencies()
    |> Enum.filter(fn {_tag, count} -> count > 1 end)
    |> Enum.map(&elem(&1, 0))
  end
end
