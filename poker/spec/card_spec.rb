require_relative "spec_helper"

describe Card do
  subject(:card) {Card.new(CARD_VALUES.sample, CARD_SUITS.sample)}

  describe "#initialize" do
    it "checks value and suit of a Card" do
      expect(CARD_VALUES).to include(card.value)
      expect(CARD_SUITS).to include(card.suit)
    end
  end

end
