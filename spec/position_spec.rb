require 'spec_helper'

RSpec.describe Position do
  let(:position_a) { Position.new(0,0)}
  let(:position_b) { Position.new(10,5)}

  describe ".initialize" do
    it 'creates an instance with coordinate x and y for position A' do
      expect(position_a.x).to eq(0)
      expect(position_a.y).to eq(0)
    end

    it 'creates an instance with coordinate x and y for position B' do
      expect(position_b.x).to eq(10)
      expect(position_b.y).to eq(5)
    end
  end

  describe ".to_s" do
    it "indicates position A's current x and y coordinate" do
      expect(position_a.to_s).to eq("(0,0)")
    end

    it "indicates position B's current x and y coordinate" do
      expect(position_b.to_s).to eq("(10,5)")
    end
  end
end
