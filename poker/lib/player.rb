require_relative "hand"

class Player

  def initialize(name, pot)
    @name = name
    @pot = pot
    @hand = Hand.new
  end

  def draw(deck)
    @hand << deck.draw
  end

  def discard(card)
    @hand.delete(card)
  end

  def collect_winnings(num)
    @pot += num
  end

  def bet(num)
    @pot -= num
  end

end
