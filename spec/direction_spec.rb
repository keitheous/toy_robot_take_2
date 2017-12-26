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
end
