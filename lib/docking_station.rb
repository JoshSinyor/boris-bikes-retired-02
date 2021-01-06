require_relative "bike"

class DockingStation
    attr_reader :bike_counter

    def initialize
      @bike_counter = 0
    end

    def release_bike
      Bike.new
    end

    def dock_bike(bike)
      if !bike.nil?
        @bike_counter += 1
        true
      else
        false
      end
    end
end
