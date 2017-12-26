require 'compass'

class Movement
  attr_reader :bearing, :x_coordinate, :y_coordinate

  def initialize(x_coordinate, y_coordinate, bearing = 'north')
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @bearing = bearing.downcase
  end

  def step_forward

  end

  def rotate(numeri_cremental)
    directional_index = compass.index(self.bearing)

    @bearing = compass.rotate(numeri_cremental)[directional_index]
  end

  private

  def compass
    Compass::DIRECTIONS
  end
end
