defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "generate deck of card" do
    assert Cards.create_deck() == ["Ace", "Two", "Three"]
  end

  test "shuffle deck of card" do
    assert Cards.shuffle(["Ace", "Two"]) in [["Ace", "Two"], ["Two", "Ace"]]
  end

  test "include Two in deck of card" do
    assert Cards.contains?(["Ace", "Two", "Three"], "Two")
  end

  test "no include King in deck of card" do
    refute Cards.contains?(["Ace", "Two", "Three"], "King")
  end
end
