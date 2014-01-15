# Function named "cheese_and crackers"
# receives parameters "cheese_count" and "boxes of crackers"
# print out parameters in sentences
def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "You have #{cheese_count} cheeses!"
	puts "You have #{boxes_of_crackers} boxes of crackers!"
	puts "Man that's enough for a party!"
	puts "Get a blanket"
	puts # a blank line
end

# Print a sentence
puts "We can just give the function numbers directly:"
# Call function with numbers as parameters
cheese_and_crackers(20, 30)

# Print a sentence
puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
# Call function with variables as parameters
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# Print a sentence
puts "We can even do math inside too:"
# Call function with math as parameters
cheese_and_crackers(10 + 20, 5 + 6)

# Print a sentence
puts "And we can combine the two, variables and math:"
# Call function with variable and math as parameters
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)