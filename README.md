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
Estimated total run time: 45 s

Benchmarking FrequenciesMap...
Benchmarking Iter...
Benchmarking Iter (match)...
Benchmarking Original (Enum only)...
Benchmarking Original (for)...

Name                           ips        average  deviation         median         99th %
Iter (match)                257.25        3.89 ms    ±10.70%        3.82 ms        4.60 ms
Iter                        254.73        3.93 ms    ±14.86%        3.81 ms        5.20 ms
Original (for)              232.94        4.29 ms    ±10.72%        4.13 ms        5.83 ms
FrequenciesMap              229.46        4.36 ms     ±3.65%        4.35 ms        4.88 ms
Original (Enum only)        220.82        4.53 ms    ±11.25%        4.37 ms        6.43 ms

Comparison:
Iter (match)                257.25
Iter                        254.73 - 1.01x slower +0.0384 ms
Original (for)              232.94 - 1.10x slower +0.41 ms
FrequenciesMap              229.46 - 1.12x slower +0.47 ms
Original (Enum only)        220.82 - 1.16x slower +0.64 ms

Memory usage statistics:

Name                    Memory usage
Iter (match)                 8.13 MB
Iter                         8.13 MB - 1.00x memory usage +0 MB
Original (for)               7.58 MB - 0.93x memory usage -0.55718 MB
FrequenciesMap              10.05 MB - 1.24x memory usage +1.92 MB
Original (Enum only)         6.79 MB - 0.83x memory usage -1.34552 MB

**All measurements for memory usage were the same**
```
