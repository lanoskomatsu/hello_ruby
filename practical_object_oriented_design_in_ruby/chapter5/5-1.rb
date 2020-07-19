class Trirp
  attr_reader :bicycles, :customers, :vehicle

  def prepare(prepares)
    prepares.each{|prepare|
      case prepare
      when Mechanic
        prepare.prepare_bicycles(bicycles)
      when TripCordinator
        prepare.buy_food(customers)
      when Driver
        prepare.gas_up(vehicle)
        prepare.fill_water_tank(vehicle)
      end
    }
  end
  #...
end

class Mechanic
  def prepare_bicycles(bicycles)
    bicycles.each{|bicycle| prepare_bicycle(bocycle) }
  end

  def prepare_bicycle(bicycles)
    # ...
  end
end

class TripCordinator
  def buy_food(customers)
    #...
  end
end

class Driver
  def gas_up(vehicle)
    #...
  end

  def fill_water_tank(vehicle)
    #...
  end
end