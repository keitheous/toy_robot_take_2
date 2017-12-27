class Rule
  attr_reader :fulfilled

  def new
    @fulfilled = true
  end

  def robot_inbound(robot_coordinate, board)
    inbound =
      (0...board.max_x).include?(robot_coordinate.x) &&
      (0...board.max_y).include?(robot_coordinate.y)

    puts "robot is out of bound as #{board.to_s}." unless inbound
    fulfilled = inbound
  end

  def placed_on_board?(robot)
    robot_placed = robot.placed

    puts "robot is not yet placed" unless robot_placed
    fulfilled = robot_placed
  end
end
