class Direction
  COMPASS = %w(north east south west).freeze
  attr_reader :bearing

  def initialize(bearing = 'north')
    return "invalid bearing" unless valid_compass(bearing)

    @bearing = bearing.downcase
  end

  def rotate(numeri_cremental)
    current_direction = COMPASS.index(self.bearing.downcase)
    relativity = COMPASS.rotate(numeri_cremental)

    @bearing = relativity[current_direction]
  end

  private

  def valid_compass(bearing)
    COMPASS.include?(bearing.downcase)
  end
end
