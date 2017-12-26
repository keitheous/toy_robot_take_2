require 'spec_helper'

RSpec.describe Compass do
  describe 'constant DIRECTIONS' do
    it 'contains north, east, south and west in an array' do
      expect(Compass::DIRECTIONS).to eq(["north", "east", "south", "west"])
    end
  end
end
