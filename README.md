# EnumsExample

This tiny repo + benchmark compares a few different approaches to program a little enumeration pipeline which extracts 'tags' from 'posts', to investigate:
- readability
- time efficiency
- memory efficiency

Original tweet: https://twitter.com/wojtekmach/status/1710574047703032018



On my machine, running `mix run benchmarks.exs` produces the following output:

```
Operating System: macOS
CPU Information: Apple M1 Pro
Number of Available Cores: 10
Available memory: 16 GB
Elixir 1.14.1
Erlang 25.0

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 5 s
memory time: 2 s
parallel: 1
inputs: none specified
Estimated total run time: 36 s

Benchmarking FrequenciesMap...
Benchmarking Iter...
Benchmarking Iter (match)...
Benchmarking Original...

Name                     ips        average  deviation         median         99th %
Iter (match)          269.28        3.71 ms     ±2.67%        3.68 ms        4.08 ms
Iter                  268.72        3.72 ms     ±3.21%        3.68 ms        4.22 ms
Original              240.86        4.15 ms     ±7.86%        4.04 ms        5.63 ms
FrequenciesMap        225.09        4.44 ms     ±3.73%        4.43 ms        4.97 ms

Comparison:
Iter (match)          269.28
Iter                  268.72 - 1.00x slower +0.00780 ms
Original              240.86 - 1.12x slower +0.44 ms
FrequenciesMap        225.09 - 1.20x slower +0.73 ms

Memory usage statistics:

Name              Memory usage
Iter (match)           8.12 MB
Iter                   8.12 MB - 1.00x memory usage +0 MB
Original               7.58 MB - 0.93x memory usage -0.54516 MB
FrequenciesMap        10.04 MB - 1.24x memory usage +1.92 MB

**All measurements for memory usage were the same**
```

