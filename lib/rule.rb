class Rule
  def self.robot_inbound(robot_coordinate, board)
    inbound =
      (0...board.max_x).include?(robot_coordinate.x) &&
      (0...board.max_y).include?(robot_coordinate.y)

    puts "robot is out of bound as #{board.to_s}." unless inbound
    inbound
  end

  def self.placed_on_board?(robot_placed)
    puts "robot is not yet placed" unless robot_placed
  end
end
