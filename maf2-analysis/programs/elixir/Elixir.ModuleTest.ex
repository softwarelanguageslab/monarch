defmodule Elixir.ModuleTest do
  import Elixir.Test
  def test() do
    Elixir.Test.calc(42)
    calc(43)
  end
end
