def add(a, b)
  puts "Adding #{a}, #{b}"
  a + b
end

def subtract(a, b)
  puts "Subtracting #{a}, #{b}"
  a - b
end

def multiply(a, b)
  puts "Mltiplying #{a}, #{b}"
  a * b
end

age = 27
age_in_months = multiply(age, 12)
height = add(5,0.5)
iq = subtract(120, 20)

puts "age #{age}"
puts "height #{height}"
puts "iq #{iq}"

something = multiply(10, add(100, subtract(50, 20)))

puts "somehing #{something}"