require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')

class TestPerson < MiniTest::Test

def setup
  @person = Person.new("Bob", 41)
end

def test_name
  assert_equal("Bob", @person.name)
end

def test_age
  assert_equal(41, @person.age)
end






end
