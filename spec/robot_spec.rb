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
end
