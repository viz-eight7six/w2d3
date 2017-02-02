require_relative 'card'

class Deck

  CARD_VALUES = %w(A 2 3 4 5 6 7 8 9 10 J Q K)

  CARD_SUITS = [:heart, :spade, :diamond, :clover]

  attr_accessor :deck, :size

  def initialize
    @deck = []
    @size = @deck.size
  end

  def fill_deck
    CARD_VALUES.each do |value|
      CARD_SUITS.each do |suit|
        @deck << Card.new(value, suit)
      end
    end
    @deck.count
  end

  def unique?
    holder_array = []
    @deck.each do |card|
      holder_array << [card.value, card.suit]
    end
    holder_array.uniq
  end

  def shuffle
    @deck.shuffle!
  end

  def draw
    @deck.pop
  end 

end
