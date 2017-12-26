class Direction
  COMPASS = %w(north east south west).freeze
  attr_reader :bearing

  def initialize(bearing = 'north')
    return "invalid bearing" unless valid_compass(bearing.downcase)

    @bearing = bearing.downcase
  end

  def rotate(numeri_cremental)
    directional_index = COMPASS.index(self.bearing)

    @bearing = COMPASS.rotate(numeri_cremental)[directional_index]
  end

  private

  def valid_compass(bearing)
    COMPASS.include?(bearing)
  end
end
