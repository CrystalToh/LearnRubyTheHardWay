require "./ex45_entrance.rb"
require "./ex45_lobby.rb"
require "./ex45_caves.rb"
require "./ex45_middle_area.rb"
require "./ex45_design_hall.rb"
require "./ex45_tech_room.rb"
require "./ex45_lose.rb"

class Game
	def initialize(start)
		@quips = [
			"Good game, though.",
			"Better luck next time.",
			"Try again?",
			"Too bad...",
			"GAME OVER!",
			"You'll get it next time.",
			"It's all according to Keikaku...",
			":("
		]

		@room = start
	end

	def play()
		next_room = @room

		while true
			puts "\n----------------------------- \n\n"
			go_to_room = method(next_room)
			next_room = go_to_room.call()
		end
	end
end

new_game = Game.new(:entrance)
new_game.play()