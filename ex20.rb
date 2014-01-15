# Assign the first argument to the variable "input_file"
input_file = ARGV[0]

# Function to print file content after reading from parameter
def print_all(f)
	puts f.read()
end

# Function to seek and return to the beginning of file
def rewind(f)
	f.seek(0, IO::SEEK_SET)
end

# Function to print a number, and a line from the file in the parameter
# Parameter "line_count" = Variable "current_line"
def print_a_line(line_count, f)
	puts "#{line_count} #{f.readline()}"
end

# Open the argument file from the variable "input_file"
# Assign opened file into the variable "current_file"
current_file = File.open(input_file)

# Print a sentence
puts "First let's print the whole file:"
puts # a blank line

# Call function to print entire file
print_all(current_file)

# Print a sentence
puts "Now let's rewind, kind of like a tape."

# Call function to go to beginning of file
rewind(current_file)

# Print a sentence
puts "Let's print three lines:"

# Assign value to variable "current_line"
current_line = 1
# Print the value of variable "current_line" and a single line from the file
# Variable "current_line" is 1
print_a_line(current_line, current_file) 

# Update value of variable "current_line"
current_line += 1
# Print the value of variable "current_line" and a single line from the file
# Variable "current_line" is 2
print_a_line(current_line, current_file)

# Update value of variable "current_line"
current_line += 1
# Print the value of variable "current_line" and a single line from the file
# Variable "current_line" is 3
print_a_line(current_line, current_file)
