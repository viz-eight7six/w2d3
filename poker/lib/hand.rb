require_relative 'card'

class Hand

  CARD_VALUES = %w(A 2 3 4 5 6 7 8 9 10 J Q K)

  attr_accessor :hand

  def initialize
    @hand = []
  end

  def logic
    holder_array = []
    @hand.each do |card|
      holder_array << [card.value, card.suit]
    end

    return 'straight' if straight?(holder_array)
    return 'flush' if flush?(holder_array)
    return "two pair" if two_pair?(holder_array)
    
  end

  def straight?(array)
    new_array = []
    array.each do |el|
      new_array << CARD_VALUES.index(el[0])
    end
    new_array.sort!
    i = 0
    return true if new_array == [0,9,10,11,12]
    while i <= new_array.length - 2
      j = i + 1
      return false unless new_array[j] - new_array[i] == 1
      i += 1
    end
    return true
  end

  def flush?(array)
    return true if array.map { |el| el[1] }.uniq.length == 1
  end

  def two_pair?(array)
    return true if array.map { |el| el[0] }.uniq.length == 3
  end

end
