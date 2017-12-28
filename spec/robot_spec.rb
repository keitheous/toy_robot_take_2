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

      it 'contains placed boolean' do
        expect(robot.placed).to eq(true)
      end
    end
  end

  describe '.move_forward' do
    context 'moving north-ward' do
      let(:north_robot) { Robot.new(0, 0, 'north', true) }

      it 'moves robot from position(x,y) 0,0 to 0,1' do
        north_robot.move_forward

        expect(north_robot.position.x).to eq(0)
        expect(north_robot.position.y).to eq(1)
      end

      it 'moves four steps forward safely' do
        north_robot.move_forward
        north_robot.move_forward
        north_robot.move_forward
        north_robot.move_forward

        expect(north_robot.position.x).to eq(0)
        expect(north_robot.position.y).to eq(4)
      end

      it 'prevents out of boundaries movements' do
        north_robot.move_forward
        north_robot.move_forward
        north_robot.move_forward
        north_robot.move_forward
        north_robot.move_forward
        north_robot.move_forward

        expect(north_robot.position.x).to eq(0)
        expect(north_robot.position.y).to eq(4)
      end
    end

    context 'moving east-ward' do
      it 'moves robot from position(x,y) 0,0 to 1,0' do
        east_robot = Robot.new(0, 0, 'east', true)
        east_robot.move_forward

        expect(east_robot.position.x).to eq(1)
        expect(east_robot.position.y).to eq(0)
      end
    end

    context 'moving south-ward' do
      it 'moves robot from position(x,y) 4,4 to 4,3' do
        south_robot = Robot.new(4,4, 'south', true)
        south_robot.move_forward

        expect(south_robot.position.x).to eq(4)
        expect(south_robot.position.y).to eq(3)
      end
    end
  end

  describe '.turn_left' do
    it 'prevents left turn if robot is not placed on board' do
      robot_starting_north = Robot.new(0, 0, 'north', false)
      robot_starting_north.turn_left

      expect(robot_starting_north.bearing).to eq('north')
    end

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
    it 'prevents left right if robot is not placed on board' do
      robot_starting_north = Robot.new(0, 0, 'north', false)
      robot_starting_north.turn_right

      expect(robot_starting_north.bearing).to eq('north')
    end


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
