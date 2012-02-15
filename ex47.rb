require "test/unit"
require "ex45"

class TestClasses < Test::Unit::TestCase
  def test_cat
    jack = Cat.new("jack")
    assert_equal("jack", jack.name)
  end
  
  def test_dog
    jill = Dog.new("jill")
    assert_equal("jill", jill.name)
  end
  
  def test_employee
    hill = Employee.new("hill", 10000)
    assert_equal("hill", hill.name)
    assert_equal(10000, hill.salary)
  end
  
end