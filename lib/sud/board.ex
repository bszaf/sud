defmodule Sud.Board do
  @moduledoc false
  require Record

  Record.defrecord(:table,
    r1c1: 0,
    r1c2: 0,
    r1c3: 0,
    r1c4: 0,
    r1c5: 0,
    r1c6: 0,
    r1c7: 0,
    r1c8: 0,
    r1c9: 0,
    r2c1: 0,
    r2c2: 0,
    r2c3: 0,
    r2c4: 0,
    r2c5: 0,
    r2c6: 0,
    r2c7: 0,
    r2c8: 0,
    r2c9: 0,
    r3c1: 0,
    r3c2: 0,
    r3c3: 0,
    r3c4: 0,
    r3c5: 0,
    r3c6: 0,
    r3c7: 0,
    r3c8: 0,
    r3c9: 0,
    r4c1: 0,
    r4c2: 0,
    r4c3: 0,
    r4c4: 0,
    r4c5: 0,
    r4c6: 0,
    r4c7: 0,
    r4c8: 0,
    r4c9: 0,
    r5c1: 0,
    r5c2: 0,
    r5c3: 0,
    r5c4: 0,
    r5c5: 0,
    r5c6: 0,
    r5c7: 0,
    r5c8: 0,
    r5c9: 0,
    r6c1: 0,
    r6c2: 0,
    r6c3: 0,
    r6c4: 0,
    r6c5: 0,
    r6c6: 0,
    r6c7: 0,
    r6c8: 0,
    r6c9: 0,
    r7c1: 0,
    r7c2: 0,
    r7c3: 0,
    r7c4: 0,
    r7c5: 0,
    r7c6: 0,
    r7c7: 0,
    r7c8: 0,
    r7c9: 0,
    r8c1: 0,
    r8c2: 0,
    r8c3: 0,
    r8c4: 0,
    r8c5: 0,
    r8c6: 0,
    r8c7: 0,
    r8c8: 0,
    r8c9: 0,
    r9c1: 0,
    r9c2: 0,
    r9c3: 0,
    r9c4: 0,
    r9c5: 0,
    r9c6: 0,
    r9c7: 0,
    r9c8: 0,
    r9c9: 0
  )

  defstruct [:table]

  def new, do: %__MODULE__{table: table()}

  def to_pretty_string(%__MODULE__{table: table}) do
    table(
      r1c1: r1c1,
      r1c2: r1c2,
      r1c3: r1c3,
      r1c4: r1c4,
      r1c5: r1c5,
      r1c6: r1c6,
      r1c7: r1c7,
      r1c8: r1c8,
      r1c9: r1c9,
      r2c1: r2c1,
      r2c2: r2c2,
      r2c3: r2c3,
      r2c4: r2c4,
      r2c5: r2c5,
      r2c6: r2c6,
      r2c7: r2c7,
      r2c8: r2c8,
      r2c9: r2c9,
      r3c1: r3c1,
      r3c2: r3c2,
      r3c3: r3c3,
      r3c4: r3c4,
      r3c5: r3c5,
      r3c6: r3c6,
      r3c7: r3c7,
      r3c8: r3c8,
      r3c9: r3c9,
      r4c1: r4c1,
      r4c2: r4c2,
      r4c3: r4c3,
      r4c4: r4c4,
      r4c5: r4c5,
      r4c6: r4c6,
      r4c7: r4c7,
      r4c8: r4c8,
      r4c9: r4c9,
      r5c1: r5c1,
      r5c2: r5c2,
      r5c3: r5c3,
      r5c4: r5c4,
      r5c5: r5c5,
      r5c6: r5c6,
      r5c7: r5c7,
      r5c8: r5c8,
      r5c9: r5c9,
      r6c1: r6c1,
      r6c2: r6c2,
      r6c3: r6c3,
      r6c4: r6c4,
      r6c5: r6c5,
      r6c6: r6c6,
      r6c7: r6c7,
      r6c8: r6c8,
      r6c9: r6c9,
      r7c1: r7c1,
      r7c2: r7c2,
      r7c3: r7c3,
      r7c4: r7c4,
      r7c5: r7c5,
      r7c6: r7c6,
      r7c7: r7c7,
      r7c8: r7c8,
      r7c9: r7c9,
      r8c1: r8c1,
      r8c2: r8c2,
      r8c3: r8c3,
      r8c4: r8c4,
      r8c5: r8c5,
      r8c6: r8c6,
      r8c7: r8c7,
      r8c8: r8c8,
      r8c9: r8c9,
      r9c1: r9c1,
      r9c2: r9c2,
      r9c3: r9c3,
      r9c4: r9c4,
      r9c5: r9c5,
      r9c6: r9c6,
      r9c7: r9c7,
      r9c8: r9c8,
      r9c9: r9c9
    ) = table

    """
    ┌─────────┬─────────┬─────────┐
    │ #{r1c1}  #{r1c2}  #{r1c3} │ #{r1c4}  #{r1c5}  #{r1c6} │ #{r1c7}  #{r1c8}  #{r1c9} │
    │ #{r2c1}  #{r2c2}  #{r2c3} │ #{r2c4}  #{r2c5}  #{r2c6} │ #{r2c7}  #{r2c8}  #{r2c9} │
    │ #{r3c1}  #{r3c2}  #{r3c3} │ #{r3c4}  #{r3c5}  #{r3c6} │ #{r3c7}  #{r3c8}  #{r3c9} │
    ├─────────┼─────────┼─────────┤
    │ #{r4c1}  #{r4c2}  #{r4c3} │ #{r4c4}  #{r4c5}  #{r4c6} │ #{r4c7}  #{r4c8}  #{r4c9} │
    │ #{r5c1}  #{r5c2}  #{r5c3} │ #{r5c4}  #{r5c5}  #{r5c6} │ #{r5c7}  #{r5c8}  #{r5c9} │
    │ #{r6c1}  #{r6c2}  #{r6c3} │ #{r6c4}  #{r6c5}  #{r6c6} │ #{r6c7}  #{r6c8}  #{r6c9} │
    ├─────────┼─────────┼─────────┤
    │ #{r7c1}  #{r7c2}  #{r7c3} │ #{r7c4}  #{r7c5}  #{r7c6} │ #{r7c7}  #{r7c8}  #{r7c9} │
    │ #{r8c1}  #{r8c2}  #{r8c3} │ #{r8c4}  #{r8c5}  #{r8c6} │ #{r8c7}  #{r8c8}  #{r8c9} │
    │ #{r9c1}  #{r9c2}  #{r9c3} │ #{r9c4}  #{r9c5}  #{r9c6} │ #{r9c7}  #{r9c8}  #{r9c9} │
    └─────────┴─────────┴─────────┘
    """
  end

  def set(%__MODULE__{table: table} = board, r, c, v) do
    table = put_elem(table, element_index(r, c), v)
    %__MODULE__{board | table: table}
  end

  def get(%__MODULE__{table: table}, r, c),
    do: elem(table, element_index(r, c))

  defp element_index(r, c), do: (r - 1) * 9 + c

  def validate(board) do
    row_validation(board) && col_validation(board) && block_validation(board)
  end

  def validate_cell(board, row, col) do
    row_validation(board, [row]) && col_validation(board, [col]) &&
      block_validation(board, [identify_block(row, col)])
  end

  def get_row(%__MODULE__{table: table}, row) do
    1..9
    |> Enum.map(&elem(table, element_index(row, &1)))
  end

  def get_column(%__MODULE__{table: table}, col) do
    1..9
    |> Enum.map(&elem(table, element_index(&1, col)))
  end

  def get_block(%__MODULE__{table: table}, block) do
    cols =
      case rem(block, 3) do
        1 -> 1..3
        2 -> 4..6
        0 -> 7..9
      end

    rows =
      case div(block - 1, 3) do
        0 -> 1..3
        1 -> 4..6
        2 -> 7..9
      end

    res =
      for col <- cols,
          do: for(row <- rows, do: elem(table, element_index(row, col)))

    List.flatten(res)
  end

  defp row_validation(board, range \\ 1..9) do
    generic_validator(board, &get_row/2, range)
  end

  defp col_validation(board, range \\ 1..9) do
    generic_validator(board, &get_column/2, range)
  end

  defp block_validation(board, range \\ 1..9) do
    generic_validator(board, &get_block/2, range)
  end

  defp generic_validator(board, retrieve_elements_fun, args) do
    Enum.reduce_while(args, true, fn arg, _ ->
      elements =
        board
        |> retrieve_elements_fun.(arg)
        |> Enum.filter(&(&1 != 0))
        |> Enum.map(fn
          {:set, n} -> n
          n -> n
        end)

      if MapSet.size(MapSet.new(elements)) == length(elements) do
        {:cont, true}
      else
        {:halt, false}
      end
    end)
  end

  defp identify_block(row, col) when row in [1,2,3] and col in [1,2,3], do: 1
  defp identify_block(row, col) when row in [1,2,3] and col in [4,5,6], do: 2
  defp identify_block(row, col) when row in [1,2,3] and col in [7,8,9], do: 3
  defp identify_block(row, col) when row in [4,5,6] and col in [1,2,3], do: 4
  defp identify_block(row, col) when row in [4,5,6] and col in [4,5,6], do: 5
  defp identify_block(row, col) when row in [4,5,6] and col in [7,8,9], do: 6
  defp identify_block(row, col) when row in [7,8,9] and col in [1,2,3], do: 7
  defp identify_block(row, col) when row in [7,8,9] and col in [4,5,6], do: 8
  defp identify_block(row, col) when row in [7,8,9] and col in [7,8,9], do: 9
end
