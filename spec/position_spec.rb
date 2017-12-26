require 'spec_helper'

RSpec.describe Position do
  describe 'initialize' do
    it 'creates an instance with attributes x, y and direction' do
      robot = Position.new(1, 2, 'north')

      expect(robot.coordinate_x).to eq(1)
      expect(robot.coordinate_y).to eq(2)
      expect(robot.direction).to eq('north')
    end
  end
end
