require_relative "spec_helper"


describe Hand do

  subject(:new_hand) { Hand.new()}
  let(:deck) {Deck.new}
  before(:each) {deck.fill_deck}
    describe "#initialize" do

      it "initializes a empty hand" do
        expect(new_hand.hand).to be_empty
      end

    end

    describe "#draw" do
      new_hand.draw(deck)

      it "draws card to hand" do
        expect(new_hand.hand).not_to be_empty
      end

      it "deck should lose one card" do
        expect(deck.size).to eq(51)
      end

    end

    describe "#discard" do



  end
