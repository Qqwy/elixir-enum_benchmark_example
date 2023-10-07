defmodule EnumsExampleTest do
  use ExUnit.Case
  doctest EnumsExample

  test "greets the world" do
    assert EnumsExample.hello() == :world
  end
end
