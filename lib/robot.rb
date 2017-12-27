class Robot
  attr_reader :position_x, :position_y, :bearing, :placement

  def initialize(position_x, position_y, bearing, placement = false)
    @position_x = position_x
    @position_y = position_y
    @bearing = bearing
    @placement = placement
  end
end
