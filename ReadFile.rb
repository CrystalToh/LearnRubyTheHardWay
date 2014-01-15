filename = ARGV.first
script = $0

puts "We're going to open #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "? "
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'r')

puts target.read()

puts "And finally, we close it."
target.close()