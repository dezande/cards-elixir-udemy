defmodule Cards do
  @values [
    "Ace",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Jack",
    "Queen",
    "King"
  ]
  @suits ["Spades", "Clubs", "Heats", "Diamonds"]

  @spec create_deck :: list()
  def create_deck do
    for suit <- @suits, value <- @values do
      "#{value} of #{suit}"
    end
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

  @spec deal(any, integer) :: {list(), list()}
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  @spec save(list(), binary()) :: :ok | {:error, atom}
  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end
end
