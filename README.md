# EnumsExample

This tiny repo + benchmark compares a few different approaches to program a little enumeration pipeline which extracts 'tags' from 'posts', to investigate:
- readability
- time efficiency
- memory efficiency

Original tweet: https://twitter.com/wojtekmach/status/1710574047703032018



On my machine, running `mix run benchmarks.exs` produces the following output:

```
Compiling 3 files (.ex)
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
Iter (match)          248.09        4.03 ms     ±2.31%        4.00 ms        4.40 ms
Iter                  242.96        4.12 ms     ±3.74%        4.06 ms        4.75 ms
Original              240.69        4.15 ms     ±9.07%        4.04 ms        6.11 ms
FrequenciesMap        231.29        4.32 ms     ±2.88%        4.27 ms        4.68 ms

Comparison:
Iter (match)          248.09
Iter                  242.96 - 1.02x slower +0.0851 ms
Original              240.69 - 1.03x slower +0.124 ms
FrequenciesMap        231.29 - 1.07x slower +0.29 ms

Memory usage statistics:

Name              Memory usage
Iter (match)           8.13 MB
Iter                   8.13 MB - 1.00x memory usage +0 MB
Original               8.06 MB - 0.99x memory usage -0.07598 MB
FrequenciesMap        10.05 MB - 1.24x memory usage +1.92 MB

**All measurements for memory usage were the same**

```
