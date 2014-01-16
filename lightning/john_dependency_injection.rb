# DEPENDENCY INJECTION

# Instead of having your object create a dependency themselves, you pass the 
# needed dependency in to the constructor or via arguments (or some other 
# "injector"), and you make the  construction of the dependency someone 
#else's problem.

# BAD: Wheel is constructed inside of the gear_inches method. Does Gear really 
# need to know how wheel is built? All it needs to know is its diameter.

class Gear
  def initialize(ratio)
    @ratio = ratio
  end

  def gear_inches
    ratio * Wheel.new(rim, tire).diameter
  end
end

# GOOD: Wheel is now passed into Gear ("injected") as an argument. Gear doesn't
# care what Wheel is exactly, only that it has a diameter. The gear_inches method
# is now more flexible and less dependent on Wheel.

class Gear
  def initialize(ratio, wheel)
    @ratio = ratio
    @wheel = wheel
  end

  def gear_inches
    ratio * @wheel.diameter
  end
end