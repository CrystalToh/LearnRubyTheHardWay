# Assign first argument to variable "filename"
filename = ARGV.first

# Assign ">" to variable "prompt"
prompt = "> "
# Variable "txt" is the opened file from the variable "filename"
# which is the argument file name
txt = File.open(filename)

# Print a sentence and the value of variable "filename"
puts "Here's your file: #{filename}"
# Print the contents of the opened file of the argument after reading it
puts txt.read()
txt.close();

# Print a sentence
puts "I'll also ask you to type it again:"
# Print the value of variable "prompt"
print prompt
# Obtain user input for file to be opened and assign to variable "file_again"
file_again = STDIN.gets.chomp()

# Variable "txt_again" is the opened file from the variable "file_again"
txt_again =  File.open(file_again)

# Print the contents of the opened file after reading it
puts txt_again.read()
txt_again.close()