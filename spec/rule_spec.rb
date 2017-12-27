require 'spec_helper'

RSpec.describe Rule do
  describe ".placed_on_board?" do
    it 'returns true if robot is placed' do
      placed_robot = Robot.new(0,0,'north', true)
      rule = Rule.placed_on_board?(placed_robot)

      expect(rule).to eq(true)
    end

    it 'returns false if robot is not placed' do
      floating_robot = Robot.new(0,0,'north', false)
      rule = Rule.placed_on_board?(floating_robot)

      expect(rule).to eq(false)
    end
  end

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
