first, second, third = ARGV

puts "The script is called: #{$0}"
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

print "What would you like you final variable to be? "
forth = STDIN.gets.chomp()
puts "Your last variable is: #{forth}"