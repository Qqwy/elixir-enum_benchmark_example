posts = for name <- 1..10_000 do
               %{name: name, tags: [:rand.bytes(1), :rand.bytes(1), :rand.bytes(1)]}
            end

Benchee.run(
  %{
    "Original" => fn -> Original.popular_tags(posts) end,
    "FrequenciesMap" => fn -> WithFM.popular_tags(posts) end,
    "Iter" => fn -> WithIter.popular_tags(posts) end,
    "Iter (match)" => fn -> WithIter.popular_tags2(posts) end,
  },
  time: 5,
  memory_time: 2
)
