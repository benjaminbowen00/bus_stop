class Bus
  attr_reader :route_number, :destination, :passengers


  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Brum brum"
  end

  def number_passengers()
    return @passengers.length
  end

  def pick_up(person)
    @passengers << person
  end

  def drop_off(person)
    drop_person = nil
    for passenger in @passengers
      if passenger == person
        drop_person = person
      end
    end
    @passengers.delete(drop_person)
  end

  def empty
     @passengers = []
  end

end
