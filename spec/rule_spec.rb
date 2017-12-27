require 'spec_helper'

RSpec.describe Rule do
  describe ".robot_inbound" do
    it 'determines if robot is still within board boundaries' do
      board_boundaries = Board.new(10, 10)
      robot_position = Position.new(5, 5)
      rule = Rule.robot_inbound(robot_position, board_boundaries)

      expect(rule).to eq(true)
    end
  end
end
