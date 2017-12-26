# spec/board_spec.rb
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
end
