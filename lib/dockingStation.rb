require_relative 'bike.rb'

class DockingStation

  attr_reader :bike_collection

  def initialize
    @bike_collection = []
  end

  def release_bike
    if (@bike_collection.length == 0)
      raise "No Bikes Available"
    else
      @bike_collection.pop
    end
  end

  def dock(bike)
    if (@bike_collection.length >= 20)
      raise "No dock space Available"
    else
      @bike_collection.push(bike)
    end
  end

end
