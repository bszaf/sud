defmodule Sud.Generator.Classic do
  @moduledoc """
  Generates sudoku
  """

  def generate do
    do_generate(Sud.Board.new(), 17)
  end

  defp do_generate(board, 0), do: board

  defp do_generate(board, n) do
    row = :rand.uniform(9)
    col = :rand.uniform(9)
    value = :rand.uniform(9)
    new_board = Sud.Board.set(board, row, col, value)

    if Sud.Board.validate_cell(new_board, row, col) do
      do_generate(new_board, n - 1)
    else
      do_generate(board, n)
    end
  end
end
