# The file name is the first argument
filename = ARGV.first
# The variable "script" stores the script name
script = $0

# Print 3 sentences on 3 new lines
puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

# Print a question mark before requesting for a user input
print "? "
STDIN.gets

# Print a sentence
puts "Opening the file..."
# Open the file stored in variable "filename" to write
# Store the opened file into variable "target"
target = File.open(filename, 'w')

# Print a sentence
puts "Truncating the file. Goodbye!"
# Empty the file in the variable "target", with size "target.size"
target.truncate(target.size)

# Print a sentence
puts "Now I'm going to ask you for three lines."

# Print sentences
# Request for user input after each time and store in a variable
print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

# Print a sentence
puts "I'm going to write these to the file."

# Write user inputs stored in variables into file in the variable "target"
target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

text = "\n%s\n%s\n%s\n" % [line1, line2, line3]
target.write(text)

# Prints a sentence
puts "And finally, we close it."
# Close/Save file
target.close()