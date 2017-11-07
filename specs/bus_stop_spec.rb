require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')
require_relative('../bus_stop.rb')

class TestBusStop < MiniTest::Test

  def setup
    @bus_stop = BusStop.new('castle terrace')
    @person = Person.new("Bob", 41)

  end

  def test_add_to_queue
  end 


end
