class Board
  attr_reader :max_x, :max_y

  def initialize(max_x = 5, max_y = 5)
    @max_x = max_x
    @max_y = max_y
  end
end
