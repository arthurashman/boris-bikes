class DockingStation
  def initialize
    @bikes = []
  end
  def bikes
    @bikes
  end

  def release_bike

    fail "No bikes available" unless @bikes.length > 0
    return @bikes
  end

  def dock(bike,capacity = 20)
    fail "No space available" if @bikes.length > 19
    @bikes << bike

  end
end
