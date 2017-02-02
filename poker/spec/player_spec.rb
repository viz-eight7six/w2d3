require_relative "spec_helper"


describe Player do
  let(:dummy_card) { double(:card_value => 'A', :card_suit => :spade) }
  let(:dummy_deck) { double(:deck => [dummy_card], :size => 1) }
  let(:player_hand) { double(:hand => []) }
  subject(:player) { Player.new( "J", 1000) }

  describe "#initialize" do

    it "has a name" do
      expect(player.name).to be_truthy
    end

    it "has a empty hand" do
      expect(player.hand.hand).to be_empty
    end

    it "has a pot" do
      expect(player.pot).to be_a(Integer)
    end

  end

  context "player draws card" do
    allow(dummy_deck).to receive(:draw_card).and_return(dummy_card)
    before(:each) { player.draw(dummy_deck) }
    describe "#draw" do
      it "draws card to hand" do
        expect(player.hand.hand).not_to be_empty
      end
    end

    describe "#discard" do
      it "discards selected card" do
        player.discard(dummy_card)
        expect(player.hand.hand).to be_empty
      end
    end
  end

  describe "#bet" do
    it "takes money from pot" do
      player.bet(500)
      expect(player.pot).to eq(500)
    end
  end

  describe "#collect_winnings" do
    it "puts money into pot" do
      player.collect_winnings(1000)
      expect(player.pot).to eq(2000)
    end
  end
end
