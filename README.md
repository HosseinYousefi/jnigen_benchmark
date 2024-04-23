# Results

On my machine:

```
modified(RunTime): 12675.3625 us.
normal(RunTime): 21398.73404255319 us.
two step(RunTime): 551.5205 us.
two step with typed list(RunTime): 128.79721557263449 us.
```

Another run:

```
modified(RunTime): 12539.3625 us.
normal(RunTime): 21401.00000000000 us.
two step(RunTime): 544.43875 us.
two step with typed list(RunTime): 125.98531036724081 us.
```

The `modified` version is 60-70% faster than the `normal` version on my machine.
So it's worth it to not allocated every time we're setting the range.

Of course, calling `setRange` only once is faster, even using a dart list as in
`two step`, using a `Int32List` like in `two step with typed list` is even
faster – (630 µs before the recent change in
[native#1095](https://github.com/dart-lang/native/pull/1095) vs 125 µs after).
