require 'spec_helper'

RSpec.describe Direction do
  describe 'constant COMPASS' do
    it 'contains north, east, south and west in an array' do
      expect(Direction::COMPASS).to eq["north", "east", "south", "west"]
    end
  end

  describe '.initialize' do
    it 'bears North by default unless specified' do
      default_directin = Direction.new

      expect(default_direction.bearing).to eq('North')
    end

    it 'bears south when specified' do
      specified_direction = Direction.new('south')

      expect(specified_direction.bearing).to eq('South')
    end

    it 'bears east when specified' do
      specified_direction = Direction.new('East')

      expect(specified_direction.bearing).to eq('East')
    end
  end
end
