require_relative 'bike.rb'

class DockingStation

  attr_reader :bike

  def release_bike
    unless @bike.is_a? Bike
      fail "No Bikes Available"
    end
    @bike
  end

  def dock(bike)
@bike = bike
  end

end
