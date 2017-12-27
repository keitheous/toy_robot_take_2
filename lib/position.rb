class Position
  attr_reader :x, :y

  def initialize(x,y)
    @x = x
    @y = y
  end

  def to_s
    "(#{self.x},#{self.y})"
  end
end
