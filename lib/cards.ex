defmodule Cards do
  @spec create_deck :: list()
  def create_deck do
    ["Ace", "Two", "Three"]
  end

  @spec shuffle(list()) :: list()
  def shuffle(deck) do
    deck
    |> Enum.shuffle
  end

  @spec contains?(list(), binary()) :: boolean
  def contains?(deck, card) do
    deck
    |> Enum.member?(card)
  end
end
