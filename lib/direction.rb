class Direction
  COMPASS = %w(north east south west).freeze
  attr_reader :bearing

  def initialize(bearing = 'north')
    @bearing = bearing
  end
end
