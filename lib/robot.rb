require 'position'
require 'board'
require 'movement'

class Robot
  attr_reader :position, :bearing, :placed, :board

  def initialize(position_x, position_y, bearing, placed = false)
    @placed = placed
    # @board = Board.new

    set_position_coordinate(position_x, position_y)
    set_compass_bearing(bearing)
  end

  def move_forward
    return unless placed
    movement = Movement.new(self.position.x, self.position.y, self.bearing)
    movement.step_forward

    set_position_coordinate(movement.x_coordinate, movement.y_coordinate)
  end

  def rotate_in_direction(numeri_cremental)
    movement = Movement.new(nil, nil, self.bearing)

    movement.rotate(numeri_cremental)

    set_compass_bearing(movement.bearing)
  end

  def turn_left
    rotate_in_direction(-1) if robot_placed_on_board?(placed)
  end

  def turn_right
    rotate_in_direction(1) if robot_placed_on_board?(placed)
  end

  def report
    if robot_placed_on_board?(placed)
      puts "Position #{self.position.to_s}, facing #{self.bearing.capitalize}."
    end
  end

  private

  def set_position_coordinate(x, y)
    @position = Position.new(x, y) if Rule.robot_inbound(Position.new(x, y), board)
  end

  def set_compass_bearing(bearing)
    @bearing = bearing
  end

  def robot_placed_on_board?(placed)
    Rule.placed_on_board?(placed)

    placed
  end
end
