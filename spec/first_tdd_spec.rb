require "first_tdd"
require 'towers_of_hanoi'
require "rspec"

describe Array do
  describe "#my_unique" do

    it "returns all unique elements in an array" do
      array = [1,2,1,3,3]
      expect(array.my_unique).to eq([1,2,3])
    end

  end

  describe "#two_sum" do

    it "returns pairs of positions where the elements sum to zero" do
      array = [-1, 0, 2, -2, 1]
      expect(array.two_sum).to eq([[0,4], [2,3]])
    end

  end

  describe "my_transpose" do

    it "returns transpose array" do
      array = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
       ]
       expect(array.my_transpose).to eq (array.transpose)
    end
  end

  describe "stock_picker" do

    it "outputs the most profitable pair" do
      stock_price = [3,4,5,1]
      expect(stock_price.stock_picker).to eq([0,2])
    end

    it "outputs the most porfitable pair when largest number is in the front" do
      stock_price = [55, 2, 1, 3]
      expect(stock_price.stock_picker).to eq ([2,3])
    end
  end

end

describe TowersOfHanoi do
  subject(:new_game) {TowersOfHanoi.new}
  before(:each) {TowersOfHanoi.new}
  let(:game_one_move) {TowersOfHanoi.new([[3,2], [1], []])}
  let(:finished_game) {TowersOfHanoi.new([[], [3,2,1], []])}

  describe "#move" do

    it "moves piece to another array" do
      expect(new_game.move(0,1)).to eq(1)
    end

    it "check if move is valid" do
      expect{ new_game.move(0,0) }.to raise_error("not valid!")
    end

    it "raise error if bigger piece goes on top of smaller piece" do
      expect{ game_one_move.move(0,1) }.to raise_error("not valid!")
    end
  end

  describe "#won?" do

    it "Checks if the player won: false" do
      expect(new_game.won?).to be_falsey
    end

    it "Checks if the player won: true" do
      expect(finished_game.won?).to be_truthy
    end

  end
end
