# The variable "ten_things" is a list of 6 elements
ten_things = "Apples Oranges Crows Telephone Light Sugar"

# Prints a sentence
puts "Wait there's not 10 things in that list, let's fix that."

# Split the elements in the variable "ten_things" by ' '
# Assign the split elements as values into variable "stuff"
stuff = ten_things.split(' ')
# Variable "more_stuff" is an array with 8 elements
more_stuff = %w(Day Night Song Frisbee Corn Banana Girl Boy)

# While there are not 10 elements in the variable "stuff"
while stuff.length != 10
	# Remove the last elements in "more_stuff"
	# Assign the element as the value of the variable "next_one"
	next_one = more_stuff.pop()
	# Print a sentence
	puts "Adding: #{next_one}"
	# Add the value of "next_one" to the end of "stuff"
	stuff.push(next_one)
	# Print a sentence
	puts "There;s #{stuff.length} items now."
end

# Print a sentence
puts "There we go: #{stuff}"

# Print a sentence
puts "Let's do some things with stuff."

# Print the 2nd element in the array "stuff"
puts stuff[1]
# Print the last element in the array "stuff"
puts stuff[-1] # whoa! fancy
# Print the array "stuff"
# Remove the last element
puts stuff.pop()
# Print the variable "stuff"
# Add a ' ' between each element
puts stuff.join(' ') # what? cooL!
# Print the 3rd and 5th element in the array "stuff"
# Add a '#' between the elements
puts stuff.values_at(3,5).join('#') # super steLLar!
