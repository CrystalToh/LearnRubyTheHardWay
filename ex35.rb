# Prompt player input
def prompt()
	print "> "
end

# Final room
# Win:  < 50
# Lose: Not a number
# 		>= 50
def gold_room()
	puts "This room is full of gold. How much do you take?"

	prompt; next_move = gets.chomp
##	if next_move.include? "0" or next_move.include? "1"
	if next_move =~ /[0-9]/
		how_much = next_move.to_i()
	else
		dead("Man, learn to type a number.")
	end

	if how_much < 50
		puts "Nice, you're not greedy, you win!"
		Process.exit(0)
	else
		dead("You greedy bastard!")
	end
end

 # Left room
 # Win: 	Taunt bear x 1
 # 			Open door
 # Lose: 	Take honey
 # 		 	Taunt bear x 2
 # Neutral:	Others
def bear_room()
	puts "There is a bear here."
	puts "The bear has a bunch of honey."
	puts "The fat bear is in front of another door."
	puts "How are you going to move the bear?"
	bear_moved = false;

	while true
		prompt; next_move = gets.chomp

		if next_move == "take honey"
			dead("The bear looks at you then slaps your face off.")
		elsif next_move == "taunt bear" and not bear_moved
			puts "The bear has moved from the door. You can go through it now."
			bear_moved = true
		elsif next_move == "taunt bear" and bear_moved
			dead("The bear gets pissed off and chews your leg off.")
		elsif next_move == "open door" and bear_moved
			gold_room()
		else
			puts "I got no idea what that means."
		end
	end
end

# Right room
# Win: 	Flee
# Lose: Head
# 		Others
def cthulhu_room()
	puts "Here you see the great evil Cthulhu."
	puts "He, it, whatever stares at you and you go insane."
	puts "Do you flee for your life or eat your head?"

	prompt; next_move = gets.chomp

	if next_move.include? "flee"
		start()
	elsif next_move.include? "head"
		dead("Well that was tasty!")
	else
		cthulhu_room()
	end
end

# Game over
def dead(why)
	puts "#{why} Game Over!!"
	Process.exit(0)
end

# Dark room
# Win:  Left (Bear room)
# 	    Right (Cthulhu room)
# Lose: Others
def start()
	puts "You are in a dark room."
	puts "There is a door to your right and left."
	puts "Which one do you take?"

	prompt; next_move = gets.chomp

	if next_move == "left"
		bear_room()
	elsif next_move == "right"
		cthulhu_room()
	else
		dead("You stumble around the room until you starve.")
	end
end

def game_begin()
	puts "You find youself entering an abandoned castle deep in the woods."
	puts "Strange sounds rumble deep within the granite walls."
	puts "Are you brave enough to move forward? Or will you run out screaming through the door?"

	prompt; next_move = gets.chomp

	if next_move == "move forward"
		start()
	elsif next_move.include? "run"
		dead("You fell in the moat on the way out and drown.")
	else
		dead("Paralyzed by fear, you pass out and was never seen again.")
	end
end		

# Begin the game
game_begin()
