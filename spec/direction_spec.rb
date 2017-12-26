require 'spec_helper'

RSpec.describe Direction do
  describe 'constant COMPASS' do
    it 'contains north, east, south and west in an array' do
      expect(Direction::COMPASS).to eq(["north", "east", "south", "west"])
    end
  end

  describe '.initialize' do
    context 'invalid compass directions' do
      it 'returns nil' do
        invalid_compass = Direction.new('midwest')
        expect(invalid_compass.bearing).to eq(nil)
      end
    end

    context 'valid compass directions' do
      it 'bears North by default unless specified' do
        default_direction = Direction.new

        expect(default_direction.bearing).to eq('north')
      end

      it 'bears south when specified' do
        specified_direction = Direction.new('south')

        expect(specified_direction.bearing).to eq('south')
      end

      it 'bears east when specified' do
        specified_direction = Direction.new('East')

        expect(specified_direction.bearing).to eq('east')
      end
    end
  end

  describe '.rotate' do
    context 'turning left from north' do
      it 'faces west when param is -1' do
        direction = Direction.new('north')
        direction.rotate(-1)
        expect(direction.bearing).to eq('west')
      end

      it 'faces south when param is -2' do
        direction = Direction.new('north')
        direction.rotate(-2)
        expect(direction.bearing).to eq('south')
      end

      it 'faces north when param is -4' do
        direction = Direction.new('north')
        direction.rotate(-4)
        expect(direction.bearing).to eq('north')
      end

      it 'faces north when param is -8' do
        direction = Direction.new('north')
        direction.rotate(-4)
        expect(direction.bearing).to eq('north')
      end
    end

    context 'turning right from east' do
      it 'faces west when param is 1' do
        direction = Direction.new('east')
        direction.rotate(1)
        expect(direction.bearing).to eq('south')
      end

      it 'faces south when param is 3' do
        direction = Direction.new('east')
        direction.rotate(3)
        expect(direction.bearing).to eq('north')
      end

      it 'faces north when param is 10' do
        direction = Direction.new('east')
        direction.rotate(10)
        expect(direction.bearing).to eq('west')
      end
    end
  end

  describe 'to_s' do
    it 'indicates the current compass direction' do
      direction = Direction.new('south')

      expect(direction.to_s).to eq('South')

      direction.rotate(-1)

      expect(direction.to_s).to eq('East')
    end
  end
end
