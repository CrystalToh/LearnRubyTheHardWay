# Print a sentence
puts "Let's practice everything."
# Escape sequences
puts "You\'d need to know \'bout escapes with \\ that do \n newline and \t tabs."

# Paragraph
poem = <<MULTI_LINE_STRING

\t The lovely world
with logic so firmly planted
cannot discern \n the needs of love
not comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.

MULTI_LINE_STRING

# Print strings and variable
puts "--------------"
puts poem
puts "--------------"

# Math
five = 10 - 2 + 3 - 6
# Print string
puts "This should be five: #{five}"

# Function that returns 3 values
def secret_formula(started)
	jelly_beans = started * 500
	jars = jelly_beans / 1000
	crates = jars / 100
	return jelly_beans, jars, crates
end

# Variable
start_point = 10000
# Assign function return to variables
beans, jars, crates = secret_formula(start_point)

# Print string
puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

# Variable and integer math
start_point = start_point / 10

# Print a sentence
puts "We can also do that this way:"
# Format sequences
puts "We'd have %s beans, %s jars, and %s crates." % secret_formula(start_point)
