require_relative "hand"

class Player

  attr_reader :name, :pot, :hand
  def initialize(name, pot)
    @name = name
    @pot = pot
    @hand = Hand.new
  end

  def draw(deck)
    @hand.hand << deck.draw_card
  end

  def discard(card)
    @hand.hand.delete(card)
  end

  def collect_winnings(num)
    @pot += num
  end

  def bet(num)
    @pot -= num
  end

end
