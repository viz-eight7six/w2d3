require_relative "spec_helper"

describe Deck do
  subject(:new_deck) { Deck.new() }

  describe '#initialize' do
    it 'initializes deck to be empty array' do
      expect(new_deck.deck).to be_empty
    end
  end

  context "deck is filled" do
    before(:each) { new_deck.fill_deck }

    describe '#fill_deck' do
      it "puts cards in deck" do
        expect(new_deck.deck.count).to eq(52)
      end
    end

    describe "#unique?" do
      it "checks if all the cards are unique" do
        expect(new_deck.unique?).to be_truthy
      end
    end

    describe "#shuffle" do
      let(:deck_two) { Deck.new }
      it "shuffles the deck" do
        deck_two.fill_deck
        expect(new_deck.shuffle).not_to eq(deck_two.deck)
      end
    end
  end

  # allow(dummy_deck).to receive(:size).and_return(0)
  # it "deck should lose one card" do
  #   expect(deck.size).to eq(51)
  # end


end
