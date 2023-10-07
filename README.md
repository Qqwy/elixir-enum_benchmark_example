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
Estimated total run time: 45 s

Benchmarking FrequenciesMap...
Benchmarking Iter...
Benchmarking Iter (match)...
Benchmarking Original (Enum only)...
Benchmarking Original (for)...

Name                           ips        average  deviation         median         99th %
Iter                        243.25        4.11 ms     ±4.67%        4.06 ms        4.63 ms
Iter (match)                234.99        4.26 ms    ±17.16%        4.13 ms        5.30 ms
Original (for)              215.22        4.65 ms    ±26.35%        4.47 ms        6.76 ms
FrequenciesMap              210.76        4.74 ms     ±8.96%        4.70 ms        5.63 ms
Original (Enum only)        208.54        4.80 ms     ±9.43%        4.70 ms        7.05 ms

Comparison:
Iter                        243.25
Iter (match)                234.99 - 1.04x slower +0.145 ms
Original (for)              215.22 - 1.13x slower +0.54 ms
FrequenciesMap              210.76 - 1.15x slower +0.63 ms
Original (Enum only)        208.54 - 1.17x slower +0.68 ms

Memory usage statistics:

Name                    Memory usage
Iter                         8.14 MB
Iter (match)                 8.14 MB - 1.00x memory usage +0 MB
Original (for)               8.06 MB - 0.99x memory usage -0.08436 MB
FrequenciesMap              10.05 MB - 1.24x memory usage +1.91 MB
Original (Enum only)         7.81 MB - 0.96x memory usage -0.33305 MB

**All measurements for memory usage were the same**
```
