class Position
  attr_reader :coordinate_x, :coordinate_y, :direction
  def initialize(coordinate_x, coordinate_y, direction)
    @coordinate_x = coordinate_x
    @coordinate_y = coordinate_y
    @direction = direction
  end

  def to_s
    "Facing #{self.direction.to_s} on (#{self.coordinate_x},#{self.coordinate_y}) coordinate"
  end
end
