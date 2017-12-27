require 'position'

class Robot
  attr_reader :position, :bearing, :placement

  def initialize(position_x, position_y, bearing, placement = false)
    @position = set_position_coordinate(position_x, position_y)
    @bearing = bearing
    @placement = placement
  end

  def set_position_coordinate(x, y)
    @position = Position.new(x, y)
  end

  def move_forward
    movement = Movement.new(self.position.x, self.position.y, self.bearing)
    movement.step_forward

    set_position_coordinate(movement.x_coordinate, movement.y_coordinate)
  end


end
