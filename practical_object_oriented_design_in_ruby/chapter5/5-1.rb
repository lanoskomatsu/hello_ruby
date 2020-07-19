class Trirp
  attr_reader :bicycles, :customers, :vehicle

  def prepare(prepares)
    prepares.each{|prepare|
      prepare.prepare_trip(self)
    }
  end
  #...
end

class Mechanic
  def prepare_trip(trip)
    trip.bicycles.each{|bicycle| prepare_bicycle(bocycle) }
  end

  def prepare_bicycle(bicycles)
    # ...
  end
end

class TripCordinator
  def prepare_trip(trip)
    buy_food(trip.customers)
  end

  def buy_food(customers)
    #...
  end
end

class Driver
  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up(vehicle)
    fill_water_tank(vehicle)
  end
  
  def gas_up(vehicle)
    #...
  end

  def fill_water_tank(vehicle)
    #...
  end
end