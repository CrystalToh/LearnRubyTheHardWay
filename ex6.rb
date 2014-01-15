# Variable 'x' contains a sentence
# "10" is treated as a string
x = "There are #{10} types of people."
# Variable "binary" contains a word
binary = "binary"
# Variable "do_not" contains a word
do_not = "don't"
# Variable 'y' contains a sentence
# and value of variable "binary" and "do_not"
# A string is put inside a string
y = "Those who know #{binary} and those who #{do_not}."

# Print value of variable 'x'
puts x
# Print value of variable 'y'
puts y

# Print sentence and value of variable 'x'
# A string is put inside a string
puts "I said: #{x}."
# Print sentence and value of variable 'y'
# A string is put inside a string
puts "I also said: '#{y}'."

# Variable "hilarious" contains boolean
hilarious = false
# Variable "joke_evaluation" contains a sentence
# and value of variable "hilarious"
# "false" is treated as a string
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

# Print value of variable "joke_evaluation"
puts joke_evaluation

# Variable 'w' contains a sentence
w = "This is the left side of..."
# Variable 'e' contains a sentence
e = "a string with a right side."

# Print value of variable 'w' concatenated with value of variable 'e'
puts w + e