require 'position'

class Robot
  attr_reader :position, :bearing, :placement

  def initialize(position_x, position_y, bearing, placement = false)
    @position = Position.new(position_x, position_y)
    @bearing = bearing
    @placement = placement
  end
end
