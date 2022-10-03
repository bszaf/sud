# Sud

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `sud` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:sud, "~> 0.1.0"}
  ]
end
```

## Example

```elixir
iex(159)> Sud.Board.new |> Sud.Board.set(1, 1, 1) |> Sud.Board.set(4,2,1) |> Sud.Solver.Naive.solve! |> Sud.Board.to_pretty_string |> IO.puts
┌─────────┬─────────┬─────────┐
│ 1  2  3 │ 4  5  6 │ 7  8  9 │
│ 4  5  6 │ 7  8  9 │ 1  2  3 │
│ 7  8  9 │ 1  2  3 │ 4  5  6 │
├─────────┼─────────┼─────────┤
│ 2  1  4 │ 3  6  5 │ 8  9  7 │
│ 3  6  5 │ 8  9  7 │ 2  1  4 │
│ 8  9  7 │ 2  1  4 │ 3  6  5 │
├─────────┼─────────┼─────────┤
│ 5  3  1 │ 6  4  2 │ 9  7  8 │
│ 6  4  2 │ 9  7  8 │ 5  3  1 │
│ 9  7  8 │ 5  3  1 │ 6  4  2 │
└─────────┴─────────┴─────────┘
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/sud>.

