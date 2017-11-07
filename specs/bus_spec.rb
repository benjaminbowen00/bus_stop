require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')

class TestBus < MiniTest::Test

  def setup
    @person = Person.new("Bob", 41)
    @person2 = Person.new("Stacey", 21)
    @person3 = Person.new("George", 32)
    @bus = Bus.new(42, 'kashmir')
  end

  def test_bus_destination
    assert_equal('kashmir', @bus.destination)
  end

  def test_route_number
    assert_equal(42, @bus.route_number)
  end

  def test_drive_method
    assert_equal("Brum brum", @bus.drive)
  end

  def test_number_passengers
    assert_equal(0, @bus.number_passengers)
  end

  def test_pick_up
    @bus.pick_up(@person3)
    assert_equal([@person3], @bus.passengers)
    assert_equal(1, @bus.number_passengers)
  end

  def test_drop_off
    @bus.pick_up(@person3)
    @bus.pick_up(@person2)
    @bus.drop_off(@person2)
    assert_equal([@person3], @bus.passengers)
    assert_equal(1, @bus.number_passengers)
  end

  def test_empty
    @bus.pick_up(@person3)
    @bus.pick_up(@person2)
    @bus.empty
    assert_equal(0, @bus.number_passengers)
  end

end
