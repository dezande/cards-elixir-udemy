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
end
