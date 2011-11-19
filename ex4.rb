cars = 100
drivers = 30
passengers = 90
passengers_par_car = 4.0
total_passengers = drivers + passengers
cars_driven_today = drivers
carpool_capacity = cars_driven_today * passengers_par_car

puts "Total cars #{cars}"
puts "Total drivers #{drivers}"
puts "Carpool capacity #{carpool_capacity}"