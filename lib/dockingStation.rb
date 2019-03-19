require_relative 'bike.rb'

class DockingStation

  attr_reader :bike
  def initialize
    @bike_collection = []
  end

  def release_bike
    unless (@bike_collection.is_a? Bike) && (@bike_collection.count == 0)
      raise "No Bikes Available"
    end
    @bike_collection.pop
  end

  def dock(bike)

    if (@bike_collection.include? Bike) && (@bike_collection.count >= 20)
      raise "No dock space Available"
    else
      @bike_collection.push(bike)
    end
  end

end
