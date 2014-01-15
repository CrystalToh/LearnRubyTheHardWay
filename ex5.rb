name = 'Zed A. Shaw'
age = 35 # not a lie
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'
inch_to_cm = height * 2.54
lbs_to_kg = weight * 0.45

puts "Let's talk about %s." % name
puts "He's %d inches tall." % height
puts "In binary, he's %b inches tall." % height
puts "He's %d centimeters tall." % inch_to_cm
puts "He's %d pounds heavy." % weight
puts "In octal, he's %o pounds heavy." % weight
puts "He's %d kilos heavy." % lbs_to_kg
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [
	age, height, weight, age + height + weight]