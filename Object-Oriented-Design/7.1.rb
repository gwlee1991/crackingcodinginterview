# Deck of Crrds: Design the data structures for a generic deck of cards. Explain how you would
# subclass the data structures to implement blackjack.

# individual cards
class Card
  attr_reader :suit, :value
  def initialize(suit, value)
    @suit = suit
    @value = value
  end
end

class Deck
  :SUITS = ["heart", "spade", "diamond", "club"]
  :VALUES = ["1","2","3","4","5","6","7","8","9","10","J", "Q", "K"]

  def self.populate(decks)
    deck = []
    :SUITS.map {}
  end

  def initialize(decks)
    @decks = Deck.populate(decks)
  end
end

