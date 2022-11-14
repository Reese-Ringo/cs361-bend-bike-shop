# Bike

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented, :cargo_contents

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    pannier = Pannier.new()
  end

  def rent!
    self.rented = true
  end

  def add_cargo(item)
    pannier.add_item(item)
  end

  def remove_cargo(item)
    pannier.remove_item(item)
  end

  def pannier_capacity
    pannier.pannier_capacity
  end

  def pannier_remaining_capacity
    pannier.pannier_remaining_capacity
  end

end
