require 'spec_helper'

RSpec.describe Movement do
  describe '.initialize' do
    it 'creates an instance with x,y coordinate and direction' do
      robot = Movement.new(1,1, 'north')

      expect(robot.bearing).to eq('north')
      expect(robot.x_coordinate).to eq(1)
      expect(robot.y_coordinate).to eq(1)
    end
  end

  describe '.step_forward' do
    context 'while facing north on (1,1)' do
      it 'moves forward to 1,2' do
        robot = Movement.new(1,1, 'north')
        robot.step_forward

        expect(robot.x_coordinate).to eq(1)
        expect(robot.y_coordinate).to eq(2)
      end
    end

    context 'while facing south on (10,10)' do
      it 'moves forward to 10,9' do
        robot = Movement.new(10,10, 'south')
        robot.step_forward

        expect(robot.x_coordinate).to eq(10)
        expect(robot.y_coordinate).to eq(9)
      end
    end

    context 'while facing east on (5,4)' do
      it 'moves forward to 5,4' do
        robot = Movement.new(5,4, 'east')
        robot.step_forward

        expect(robot.x_coordinate).to eq(4)
        expect(robot.y_coordinate).to eq(4)
      end
    end

    context 'while facing west on (5,4)' do
      it 'moves forward to 5,4' do
        robot = Movement.new(5,4, 'west')
        robot.step_forward

        expect(robot.x_coordinate).to eq(6)
        expect(robot.y_coordinate).to eq(4)
      end
    end
  end

  describe '.rotate' do
    context 'turning left from north' do
      let(:robot_starting_north) { Movement.new(0, 0, 'north') }

      it 'faces west when param is -1' do
        robot_starting_north.rotate(-1)
        expect(robot_starting_north.bearing).to eq('west')
      end

      it 'faces south when param is -2' do
        robot_starting_north.rotate(-2)
        expect(robot_starting_north.bearing).to eq('south')
      end

      it 'faces north when param is -4' do
        robot_starting_north.rotate(-4)
        expect(robot_starting_north.bearing).to eq('north')
      end

      it 'faces north when param is -8' do
        robot_starting_north.rotate(-4)
        expect(robot_starting_north.bearing).to eq('north')
      end
    end

    context 'turning right from east' do
      let(:robot_starting_east) { Movement.new(0, 0, 'east') }

      it 'faces west when param is 1' do
        robot_starting_east.rotate(1)
        expect(robot_starting_east.bearing).to eq('south')
      end

      it 'faces south when param is 3' do
        robot_starting_east.rotate(3)
        expect(robot_starting_east.bearing).to eq('north')
      end

      it 'faces north when param is 10' do
        robot_starting_east.rotate(10)
        expect(robot_starting_east.bearing).to eq('west')
      end
    end
  end
end
