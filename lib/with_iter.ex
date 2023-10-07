defmodule WithIter do
  require Iter
  def popular_tags(posts) do
    posts
    |> Iter.flat_map(fn post -> post.tags end)
    |> Iter.frequencies()
    |> Iter.filter(fn {_tag, count} -> count > 1 end)
    |> Iter.map(&elem(&1, 0))
  end

  @doc "Implementation using `Iter.match`"
  def popular_tags2(posts) do
    posts
    |> Iter.flat_map(fn post -> post.tags end)
    |> Iter.frequencies()
    |> Iter.match({tag, count} when count > 1, tag)
  end
end
