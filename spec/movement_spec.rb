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


  describe '.rotate' do
    context 'turning left from north' do
      it 'faces west when param is -1' do
        direction = Movement.new(0, 0, 'north')
        direction.rotate(-1)
        expect(direction.bearing).to eq('west')
      end

      it 'faces south when param is -2' do
        direction = Movement.new(0, 0, 'north')
        direction.rotate(-2)
        expect(direction.bearing).to eq('south')
      end

      it 'faces north when param is -4' do
        direction = Movement.new(0, 0, 'north')
        direction.rotate(-4)
        expect(direction.bearing).to eq('north')
      end

      it 'faces north when param is -8' do
        direction = Movement.new(0, 0, 'north')
        direction.rotate(-4)
        expect(direction.bearing).to eq('north')
      end
    end

    context 'turning right from east' do
      it 'faces west when param is 1' do
        direction = Movement.new(0, 0, 'east')
        direction.rotate(1)
        expect(direction.bearing).to eq('south')
      end

      it 'faces south when param is 3' do
        direction = Movement.new(0, 0, 'east')
        direction.rotate(3)
        expect(direction.bearing).to eq('north')
      end

      it 'faces north when param is 10' do
        direction = Movement.new(0, 0, 'east')
        direction.rotate(10)
        expect(direction.bearing).to eq('west')
      end
    end
  end
end
