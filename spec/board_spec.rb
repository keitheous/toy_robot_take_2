require 'spec_helper'

RSpec.describe Board do
  describe ".initialize" do
    context 'creating instance without max_x and max_y limit params' do
      board = Board.new

      it 'returns 5 as maximum X navigation axis' do
        expect(board.max_x).to eq(5)
      end

      it 'returns 5 as maximum Y navigation axis' do
        expect(board.max_y).to eq(5)
      end
    end

    context 'creating board instance with max_x and max_y limit params' do
      board = Board.new(10, 10)

      it 'returns 10 as maximum X navigation axis' do
        expect(board.max_x).to eq(10)
      end

      it 'returns 10 as maximum Y navigation axis' do
        expect(board.max_y).to eq(10)
      end
    end
  end

  describe '.to_s' do
    context 'default board instance' do
      it 'indicates a 5 by 5 navigation board' do
        board = Board.new

        expect(board.to_s).to eq(
          "This is a 5(x-axis) by 5(x-axis) navigation board"
        )
      end
    end

    context 'custom 3 by 6 board instance' do
      it 'indicates a 3 by 6 navigation board' do
        board = Board.new(3,6)

        expect(board.to_s).to eq(
          "This is a 3(x-axis) by 6(x-axis) navigation board"
        )
      end
    end
  end
end
