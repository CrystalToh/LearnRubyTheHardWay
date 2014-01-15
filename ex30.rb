# Eaxh variable is assigned a value
people = 30
cars = 40
buses = 15

# If there are more cars than people
if cars > people
	puts "We should take the cars."
# Otherwise, if there are less cars than people
elsif cars < people
	puts "We should not take the cars."
# If all else fails
else
	puts "We can't decide."
end

# If there are more buses than cars
if buses > cars
	puts "That's too many buses."
# Otherwise, if there are less buses than cars
elsif buses < cars
	puts "Maybe we could take the buses."
# If all else fails
else
	puts "We still can't decide."
end

# If there are more people than buses
if people > buses
	puts "Alright, let's just take the buses."
# Otherwise
else
	puts "Fine, let's just stay home then."
end

# IF there are more cars than people, and less buses than cars
if cars > people and buses < cars
	puts "We can take the cars, or better yet, the bus."
# Otherwise
else
	puts "We have a problem."
end
