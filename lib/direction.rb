class Direction
  COMPASS = %w(north east south west).freeze
  attr_reader :bearing

  def initialize(bearing = 'north')
    return "invalid bearing" unless valid_compass(bearing)

    @bearing = bearing.capitalize
  end

  private

  def valid_compass(bearing)
    COMPASS.include?(bearing.downcase)
  end
end
