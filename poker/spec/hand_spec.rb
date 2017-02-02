require_relative 'spec_helper'

describe Hand do

  subject(:new_hand) { Hand.new() }
  let(:straight_cards) { [Card.new("A", :spade), Card.new("2", :heart), Card.new("3", :heart), Card.new("4", :heart), Card.new("5", :heart)]}
  let(:flush_cards) { [Card.new("10", :heart), Card.new("2", :heart), Card.new("3", :heart), Card.new("4", :heart), Card.new("5", :heart)]}
  let(:two_pair) { [Card.new("A", :heart), Card.new("A", :spade), Card.new("3", :heart), Card.new("4", :spade), Card.new("4", :diamond)]}

  describe "#initialize" do

    it "initializes a empty hand" do
      expect(new_hand.hand).to be_empty
    end
  end

  describe "#logic" do

    it "returns straight combo" do
      new_hand.hand = straight_cards
      expect(new_hand.logic).to eq("straight")
    end

    it "returns flush combo" do
      new_hand.hand = flush_cards
      expect(new_hand.logic).to eq("flush")
    end

    it "returns two pairs" do
      new_hand.hand = two_pair
      expect(new_hand.logic).to eq("two pair")
    end

  end

end
