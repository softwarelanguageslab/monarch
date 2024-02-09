# test.ex
defmodule Elixir.Test do
  @num 10

  def calc(42), do: :ok

  def calc(list) when is_list(list) do
    [h | _] = list
    h + @num + :rand.uniform()
  end

  def doSomething(pid) do 
    send(pid, {:message})
  end
end
