require 'spec_helper'

RSpec.describe Robot do
  describe '.initialize' do
    context 'creating a Robot class instance' do
      let(:robot) { Robot.new(0, 0, 'north', true) }

      it 'contains position object with x y coordinate' do
        expect(
          robot.position.instance_of?(Position)
        ).to eq(true)

        expect(robot.position.x).to eq(0)
        expect(robot.position.y).to eq(0)
      end

      it 'contains string to indicate bearing' do
        expect(robot.bearing).to eq('north')
      end

      it 'contains placement boolean' do
        expect(robot.placement).to eq(true)
      end
    end
  end

  describe '.move_forward' do
    context 'moving north-ward' do
      north_robot = Robot.new(0, 0, 'north', true)

      it 'moves robot from position(x,y) 0,0 to 0,1' do
        new_position = north_robot.move_forward

        expect(new_position.x).to eq(0)
        expect(new_position.y).to eq(1)
      end
    end

    context 'moving east-ward' do
      east_robot = Robot.new(0, 0, 'east', true)

      it 'moves robot from position(x,y) 0,0 to 1,0' do
        new_position = east_robot.move_forward

        expect(new_position.x).to eq(1)
        expect(new_position.y).to eq(0)
      end
    end

    context 'moving south-ward' do
      east_robot = Robot.new(10,10, 'south', true)

      it 'moves robot from position(x,y) 10,10 to 10,9' do
        new_position = east_robot.move_forward

        expect(new_position.x).to eq(10)
        expect(new_position.y).to eq(9)
      end
    end
  end

  describe '.turn_left' do
    it 'turns left from bearing north to west' do
      robot_starting_north = Robot.new(0, 0, 'north', true)
      robot_starting_north.turn_left

      expect(robot_starting_north.bearing).to eq('west')
    end

    it 'turns left from bearing south to east' do
      robot_starting_south = Robot.new(0, 0, 'south', true)
      robot_starting_south.turn_left

      expect(robot_starting_south.bearing).to eq('east')
    end
  end

  describe '.turn_right' do
    it 'turns right from bearing north to east' do
      robot_starting_north = Robot.new(0, 0, 'north', true)
      robot_starting_north.turn_right

      expect(robot_starting_north.bearing).to eq('east')
    end

    it 'turns right from bearing east to south' do
      robot_starting_south = Robot.new(0, 0, 'east', true)
      robot_starting_south.turn_right

      expect(robot_starting_south.bearing).to eq('south')
    end
  end
end
