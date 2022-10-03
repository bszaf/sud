defmodule Sud.Solver.Naive do
  alias Sud.Board

  def solve!(%Board{} = board) do
    case solve(board) do
      {:ok, board} -> board
      {:error, reason} -> raise reason
    end
  end

  def solve(%Board{} = board) do
    board = mark_initial(board, {1, 1})

    case do_solve(board, {1, 1}, 1) do
      {:ok, board} -> {:ok, unmark_initial(board, {1, 1})}
      error -> error
    end
  end

  defp do_solve(board, :stop, _value) do
    {:ok, board}
  end

  defp do_solve(board, {row, col}, 10) do
    row_col = prev_row_col(row, col)
    do_backtrace(board, row_col)
  end

  defp do_solve(board, {row, col}, value) do
    case Board.get(board, row, col) do
      0 ->
        new_board = Board.set(board, row, col, value)

        if Board.validate(new_board) do
          row_col = next_row_col(row, col)
          do_solve(new_board, row_col, 1)
        else
          do_solve(board, {row, col}, value + 1)
        end

      _ ->
        do_solve(board, next_row_col(row, col), 1)
    end
  end

  defp do_backtrace(_board, :stop) do
    {:error, :unsolvable}
  end

  defp do_backtrace(board, {row, col}) do
    case Board.get(board, row, col) do
      9 ->
        new_board = Board.set(board, row, col, 0)
        do_solve(new_board, {row, col}, 10)

      {:set, _} ->
        do_solve(board, {row, col}, 10)

      n ->
        new_board = Board.set(board, row, col, n + 1)
        do_solve(new_board, {row, col}, 1)
    end
  end

  defp next_row_col(9, 9), do: :stop
  defp next_row_col(row, 9), do: {row + 1, 1}
  defp next_row_col(row, column), do: {row, column + 1}

  defp prev_row_col(1, 1), do: :stop
  defp prev_row_col(row, 1), do: {row - 1, 9}
  defp prev_row_col(row, column), do: {row, column - 1}

  defp mark_initial(board, :stop), do: board

  defp mark_initial(board, {row, col}) do
    case Board.get(board, row, col) do
      0 ->
        mark_initial(board, next_row_col(row, col))

      n ->
        new_board = Board.set(board, row, col, {:set, n})
        mark_initial(new_board, next_row_col(row, col))
    end
  end

  defp unmark_initial(board, :stop), do: board

  defp unmark_initial(board, {row, col}) do
    case Board.get(board, row, col) do
      {:set, n} ->
        new_board = Board.set(board, row, col, n)
        unmark_initial(new_board, next_row_col(row, col))

      _ ->
        unmark_initial(board, next_row_col(row, col))
    end
  end
end
