defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "generate deck of card" do
    assert Cards.create_deck() == [
      "Ace of Spades", "Two of Spades", "Three of Spades", "Four of Spades",
      "Five of Spades", "Six of Spades", "Seven of Spades", "Eight of Spades",
      "Nine of Spades", "Ten of Spades", "Jack of Spades", "Queen of Spades",
      "King of Spades", "Ace of Clubs", "Two of Clubs", "Three of Clubs",
      "Four of Clubs", "Five of Clubs", "Six of Clubs", "Seven of Clubs",
      "Eight of Clubs", "Nine of Clubs", "Ten of Clubs", "Jack of Clubs",
      "Queen of Clubs", "King of Clubs", "Ace of Heats", "Two of Heats",
      "Three of Heats", "Four of Heats", "Five of Heats", "Six of Heats",
      "Seven of Heats", "Eight of Heats", "Nine of Heats", "Ten of Heats",
      "Jack of Heats", "Queen of Heats", "King of Heats", "Ace of Diamonds",
      "Two of Diamonds", "Three of Diamonds", "Four of Diamonds", "Five of Diamonds",
      "Six of Diamonds", "Seven of Diamonds", "Eight of Diamonds",
      "Nine of Diamonds", "Ten of Diamonds", "Jack of Diamonds",
      "Queen of Diamonds", "King of Diamonds"
    ]
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

  test "deal card" do
    assert Cards.deal(["Ace", "Two", "Three"], 2), [["Ace", "Two"],["Three"]]
  end

  test "save deck" do
    filename = System.tmp_dir!() |> Path.join("file.txt")
    assert Cards.save(["Ace"], filename)
  end
end
