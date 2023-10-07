posts = for name <- 1..10_000 do
               %{name: name, tags: [:rand.bytes(1), :rand.bytes(1), :rand.bytes(1)]}
            end

Benchee.run(
  %{
    "Original (for)" => fn -> Original.popular_tags(posts) end,
    "Original (Enum only)" => fn -> Original.popular_tags_enum(posts) end,
    "FrequenciesMap" => fn -> WithFM.popular_tags(posts) end,
    "Iter" => fn -> WithIter.popular_tags(posts) end,
    "Iter (match)" => fn -> WithIter.popular_tags2(posts) end,
  },
  time: 5,
  memory_time: 2
)
