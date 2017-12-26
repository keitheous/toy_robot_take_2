# spec/board_spec.rb
require 'spec_helper'

RSpec.describe Board do
  describe ".initialize" do
    context 'creating instance without params' do
      it 'returns 5 as maximum X navigation axis' do
        board = Board.new

        expect(board.max_x).to eq(5)
      end
    end

    # context 'creating board instance with params' do
    # end
  end
end
