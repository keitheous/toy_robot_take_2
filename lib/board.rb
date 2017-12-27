class Board
  attr_reader :max_x, :max_y

  def initialize(max_x = 5, max_y = 5)
    @max_x = max_x
    @max_y = max_y
  end

  def to_s
    "this is a #{self.max_x}(x-axis) by #{self.max_y}(x-axis) navigation board."
  end
end
