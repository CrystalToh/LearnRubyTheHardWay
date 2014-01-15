tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = <<MY_HEREDOC
I'll do a list
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
MY_HEREDOC

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

puts "\"My name is Crystal\\Huey Jing\""
puts "\aBall Alert\a"
puts "\bBackspace?\b"
puts "The difference between a \rcarriage return..."
puts "and a \nnew line."
puts "S\sP\sA\sC\sE\sS\s!\s!\s!\s!\s!"
puts "\tThis would be tabbed in."