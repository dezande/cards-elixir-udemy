defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "generate deck of card" do
    assert Cards.create_deck() == ["Ace", "Two", "Three"]
  end

  test "shuffle deck of card" do
    assert Cards.shuffle(["Ace", "Two"]) in [["Ace", "Two"], ["Two", "Ace"]]
  end
end
