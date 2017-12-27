require 'spec_helper'

RSpec.describe Robot do
  describe '.initialize' do
    it 'creates an instance with position, bearing, placement' do
      robot = Robot.new(0, 0, 'north', true)

      expect(robot.position_x).to eq(0)
      expect(robot.position_y).to eq(0)
      expect(robot.bearing).to eq('north')
      expect(robot.placement).to eq(true)
    end
  end
end
