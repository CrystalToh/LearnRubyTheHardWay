def prompt
	print "> "
end

puts "You enter a dark room with two doors. Do you go through door #1 or door #2?"

prompt; door = gets.chomp

if door == "1"
	puts "There's a giant bear here eating a cheese cake. What do you do?"
	puts "1. Take the cake."
	puts "2. Scream at the bear."

	prompt; bear = gets.chomp

	if bear == "1"
		puts "The bear eats your face off. Good job!"
	elsif bear == "2"
		puts "The bear eats your legs off. Good job!"
	else
		puts "Well, doing #{bear} is probably better. Bear runs away."
		puts "You continue walking deeper into the room."
		puts "Look, there's a cat looking up at you. What color are the cat's eyes?"
		puts "1. Blue"
		puts "2. Yellow"
		puts "3. Red"

		prompt; cat = gets.chomp

		if cat == "1" or cat =="2"
			puts "Aww... The kitty purrs when you pet it..."
		else
			puts "As you approach the kitty, it turns into a demon and eats your soul. Good job!"
		end
	end

elsif door == "2"
	puts "You stare into the endless abyss at Cthuhlu's retina."
	puts "1. Blueberries."
	puts "2. Yellow jacket clothespins."
	puts "3. Understaning revolvers yelling melodies."

	prompt; insanity = gets.chomp

	if insanity == "1" or insanity == "2"
		puts "Your body survives powered by a mind of jello. Good job!"
	else
		puts "The insanity rots your eyes into a pool of muck. Good job!"
	end

else
	puts "You stumble around and fall. Which side do you land on?"
	puts "1. Left"
	puts "2. Right"

	prompt; fall = gets.chomp

	if fall == "1"
		puts "You fall on a knife and die. Good job!"
	elsif fall == "2"
		puts "You hit your head on the ground and pass out. Good job!"
	else
		puts "Somehow you twisted and turned, and landed on your feet. * high five *"
	end
		
end
	