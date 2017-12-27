require 'spec_helper'

RSpec.describe Rule do


  describe ".robot_inbound" do
    let(:board_boundaries) { Board.new(10, 10) }

    it 'returns true if robot is within board boundaries' do
      robot_position = Position.new(5, 5)
      rule = Rule.robot_inbound(robot_position, board_boundaries)

      expect(rule).to eq(true)
    end

    it 'returns false if robot is within board boundaries' do
      robot_position = Position.new(10, 11)
      rule = Rule.robot_inbound(robot_position, board_boundaries)

      expect(rule).to eq(false)
    end
  end
end
