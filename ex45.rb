class Animal
end

class Dog < Animal
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  
end

class Cat < Animal
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
end

cat = Cat.new("cat")
tommy = Dog.new("tommy")

class Person
  attr_accessor :name
  def initialize(name)
    @name=name
  end
end

class Employee < Person
  attr_accessor :salary
  def initialize(name, salary)
    super(name)
    @salary = salary
  end
end

tom = Employee.new("Tom", 10000)

puts cat.name
puts tommy.name
puts tom.name
puts tom.salary