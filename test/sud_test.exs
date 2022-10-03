defmodule SudTest do
  use ExUnit.Case
  doctest Sud

  test "greets the world" do
    assert Sud.hello() == :world
  end
end
