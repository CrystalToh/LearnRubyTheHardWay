class Room

	attr_accessor :name, :description, :paths

	def initialize(name, description)
		@name = name
		@description = description
		@paths = {}
	end

	def go(direction)
		@paths[direction]
	end

	def add_paths(paths)
		@paths.update(paths)
	end

end

central_corridor = Room.new("Central Corridor",
%q{
The Gothons of Planet Percal #25 have invaded your ship and destroyed
your entire crew. You are the last surviving member and your last
mission is to get the neutron destruct bomb from the Weapons Armory,
put it in the bridge, and blow the ship up after getting into an
escape pod.

You're running down the central corridor to the Weapons Armory when
a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume
flowing around his hate filled body. He's blocking the door to the
Armory and about to pull a weapon to blast you.

> })

central_corridor_loser_1 = Room.new("Game Over",
%q{
Quick on the draw you yank out your blaster and fire it at the Gothon.
His clown costume is flowing and moving around his body, which throws
off your aim. Your laser hist his costume but misses him entirely. This
makes him fly into an insane rage and blast you repeatedly in the face until
you are dead. Then he eats you.
})

central_corridor_loser_2 = Room.new("Game Over",
%q{
Like a world class boxer you dodge, weave, slip and slide right
as the Gothon's blaster cranks a laser past your head.
In the middle of your artful dodge your foot slips and you
bang your head on the metal wall and pass out.
You wake up shortly after only to die as the Gothon stomps on
your head and eats you.
})

laser_weapon_armory = Room.new("Laser Weapon Armory",
%q{
Lucky for you they made you learn Gothon insults in the academy.
You tell the ne Gothon joke you know:
Lghw zbgure vf fb sng, jura fur fvgf nebhaq gur ubhfr, fur fvgf nebhaq gur ubhfr.
The Gothon stops, tries not to laugh, then busts out laughing and can't move.
while he's laughing you run up and shoot him square in the head
putting him down, then jump through the Weapon Armory door.

You do a dive roll into the Weapon Armory, crouch and scan the room
for more Gothons that might be hiding. It's dead quiet, too quiet.
You stand up and run to the far side of the room and find the
neutron bomb in its container. There's a keypad lock on the box
and you need the code to get the bomb out. If you get the code
wrong 10 times then the lock closes forever and you can't
get the bomb. The code is 3 digits.
})

laser_weapon_armory_loser = Room.new("Game Over",
%q{
The lock buzzes one last time and then you hear a sickening
melting sound as the mechanism is fused together.
You decide to sit there, and finally the Gothons blow up the
ship from their ship and die.
})

the_bridge = Room.new("The Bridge",
%q{
The container clicks open and the seal breaks, letting gas out.
You grab the neutron bomb and run as fast as you can to the
bridge where you must place it in the right spot.

You burst onto the Bridge with the neutron destruct bomb
under your arm and surprise 5 Gothons who are trying to
take control of the ship. Each of them has an even uglier
clown costume than the last. They haven't puller their
weapons out yet, as they see the active bomb under your
arm and don't want to set it off.

> })

the_bridge_loser = Room.new("Game Over",
%q{
In a panic you throw the bomb at the group of Gothons
and make a leap for the door. Right as you drop it a
Gothon shoots you right in the back killing you.
As you die you see another Gothon frantically try to disarm
the bomb. You die knowing they will probably blow up when
it goes off.
})

escape_pod = Room.new("Escape Pod",
%q{
You point your blaster at the bomb under your arm
and the Gothons put their hands up and start to sweat.
You inch backward to the door, open it, and then carefully
place the bomb on the floor, pointing your blaster at it.
You then jump back through the door, punch the close button
and blast the lock so the Gothons can't get out.
Now that the bomb is placed you run to the escape pod to
get off this tin can.

You rush through the ship desperately trying to make it to
the escape pod before the whole ship explodes. It seems like
hardly any Gothons are on the ship, so your run is clear of
interference. You get to the chamber with the escape pods, and
now need to pick one to take. Some of them could be damaged
but you don't have time to look. There's 5 pods, which one do you take?

[pod #]> })

the_end_winner = Room.new("The End",
%q{
You jump into pod 2 and hit the eject button.
The pod easily slides out into space heading to
the planet below. As it flies to the planet, you look
back and see your ship implode then eplode like a
bright star, taking out the Gothon ship at the same
time. You won!
})

the_end_loser = Room.new("Game Over",
%q{
You jump into a random pod and hit the eject button.
The pod escapes out into the void of space, then
implodes as the hull ruptures, crushing your body
into jam jelly.
})

HASH = {
	:central_corridor => central_corridor,
	:central_corridor_loser_1 => central_corridor_loser_1,
	:central_corridor_loser_2 => central_corridor_loser_2,
	:laser_weapon_armory => laser_weapon_armory,
	:laser_weapon_armory_loser => laser_weapon_armory_loser,
	:the_bridge => the_bridge,
	:the_bridge_loser => the_bridge_loser,
	:escape_pod => escape_pod,
	:the_end_winner => the_end_winner,
	:the_end_loser => the_end_loser
}

START = HASH[:central_corridor]

central_corridor.add_paths({
	'shoot!' => HASH[:central_corridor_loser_1],
	'dodge!' => HASH[:central_corridor_loser_2],
	'tell a joke' => HASH[:laser_weapon_armory]
})

laser_weapon_armory.add_paths({
	'0132' => HASH[:the_bridge],
	'*' => HASH[:laser_weapon_armory_loser]
})

the_bridge.add_paths({
	'throw the bomb' => HASH[:the_bridge_loser],
	'slowly place the bomb' => HASH[:escape_pod]
})

escape_pod.add_paths({
	'2' => HASH[:the_end_winner],
	'*' => HASH[:the_end_loser]
})

def play
	next_room = START
	puts

	while true
		puts "-------------------------------------------------------\n"
		puts next_room.name
		print next_room.description

		if next_room.name == "Game Over" || next_room.name == "The End"
			puts
			Process.exit(0)
		end

		if next_room.name == "Laser Weapon Armory"
			next_room = keypad(next_room)
		elsif next_room.name == "Escape Pod"
			next_room = pod(next_room)
		else
			next_room = input(next_room)
		end
	end
end

def input(next_room)
	option = gets.chomp

	if next_room.paths.has_key?(option)
		next_room = next_room.paths[option]
	else
		puts "DOES NOT COMPUTE"
	end

	puts "\n"
	next_room
end

def pod(next_room)
	option = gets.chomp

	if next_room.paths.has_key?(option)
		next_room = next_room.paths[option]
	else
		next_room = next_room.paths['*']
	end

	puts "\n"
	next_room
end

def keypad(next_room)
	guesses = 0
	match = false

	while guesses < 10 and !match
		print "\n[keypad]> "
		option = gets.chomp
		guesses += 1

		if next_room.paths.has_key?(option)
			match = true
			puts
			next_room = next_room.paths[option]
		end

		if match == false
			puts "BZZZZZZZEDDD!!"
		end
	end

	if match == false
		puts
		next_room = next_room.paths['*']
	end

	next_room
end

#play()
