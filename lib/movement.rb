require 'compass'

class Movement
  attr_reader :bearing, :x_coordinate, :y_coordinate

  def initialize(x_coordinate = nil, y_coordinate = nil, bearing)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @bearing = bearing.downcase
  end

  def step_forward
    case self.bearing
    when 'north'
      @y_coordinate += 1
    when 'south'
      @y_coordinate -= 1
    when 'west'
      @x_coordinate -= 1
    when 'east'
      @x_coordinate += 1
    end
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
