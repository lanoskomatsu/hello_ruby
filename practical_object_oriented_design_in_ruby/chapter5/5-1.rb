class Trirp
  attr_reader :bocycles, :customers, :vehicle

  def prepare(mechanic)
    mechanic.prepare_bicycles(bicycles)
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