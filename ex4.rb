# There are 100 cars
cars = 100
# The space in a car is 4
space_in_a_car = 4.0
# There are 30 drivers
drivers = 30
# There are 90 passenger
passengers = 90
# There are (100 - 30) cars not driven
cars_not_driven = cars - drivers
# There are 30 cars driven
cars_driven = drivers
# The carpool capacity is (30 * 4)
carpool_capacity = cars_driven * space_in_a_car
# The average passengers per car is (90 / 30)
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."