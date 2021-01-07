defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "greets the world" do
    assert Cards.create_deck() == ["Ace", "Two", "Three"]
  end
end
