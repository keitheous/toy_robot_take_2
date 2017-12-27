require 'position'

class Robot
  attr_reader :position, :bearing, :placement

  def initialize(position_x, position_y, bearing, placement = false)
    @placement = placement

    set_position_coordinate(position_x, position_y)
    set_compass_bearing(bearing)
  end

  def set_position_coordinate(x, y)
    @position = Position.new(x, y)
  end

  def set_compass_bearing(bearing)
    @bearing = bearing
  end

  def move_forward
    movement = Movement.new(self.position.x, self.position.y, self.bearing)

    movement.step_forward

    set_position_coordinate(movement.x_coordinate, movement.y_coordinate)
  end

  def turn_left
    movement = Movement.new(self.position.x, self.position.y, self.bearing)

    movement.rotate(-1)

    set_compass_bearing(movement.bearing)
  end

  def turn_right
    movement = Movement.new(self.position.x, self.position.y, self.bearing)

    movement.rotate(1)

    set_compass_bearing(movement.bearing)
  end
end
