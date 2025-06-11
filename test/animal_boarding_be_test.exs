defmodule AnimalBoardingBeTest do
  use ExUnit.Case
  doctest AnimalBoardingBe

  test "greets the world" do
    assert AnimalBoardingBe.hello() == :world
  end
end
