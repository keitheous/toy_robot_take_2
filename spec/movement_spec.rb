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
    context 'while facing north on 1,1' do
      it 'moves forward to 1,2' do
        robot = Movement.new(1,1, 'north')
        robot.step_forward

        expect(robot.x_coordinate).to eq(1)
        expect(robot.y_coordinate).to eq(1)
      end
    end
  end

  describe '.rotate' do
    context 'turning left from north' do
      it 'faces west when param is -1' do
        robot_direction = Movement.new(0, 0, 'north')
        robot_direction.rotate(-1)
        expect(robot_direction.bearing).to eq('west')
      end

      it 'faces south when param is -2' do
        robot_direction = Movement.new(0, 0, 'north')
        robot_direction.rotate(-2)
        expect(robot_direction.bearing).to eq('south')
      end

      it 'faces north when param is -4' do
        robot_direction = Movement.new(0, 0, 'north')
        robot_direction.rotate(-4)
        expect(robot_direction.bearing).to eq('north')
      end

      it 'faces north when param is -8' do
        robot_direction = Movement.new(0, 0, 'north')
        robot_direction.rotate(-4)
        expect(robot_direction.bearing).to eq('north')
      end
    end

    context 'turning right from east' do
      it 'faces west when param is 1' do
        robot_direction = Movement.new(0, 0, 'east')
        robot_direction.rotate(1)
        expect(robot_direction.bearing).to eq('south')
      end

      it 'faces south when param is 3' do
        robot_direction = Movement.new(0, 0, 'east')
        robot_direction.rotate(3)
        expect(robot_direction.bearing).to eq('north')
      end

      it 'faces north when param is 10' do
        robot_direction = Movement.new(0, 0, 'east')
        robot_direction.rotate(10)
        expect(robot_direction.bearing).to eq('west')
      end
    end
  end
end
