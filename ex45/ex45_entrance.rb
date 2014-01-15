def entrance()
	puts <<STORY
It is a beautiful Friday morning in the month of February.
As usual, it is time for work at the paradise known as MV.
But first, you need to get there. You begin heading towards the elevators.
The elevator arrvies with a "ding!" and you casually step in.
Which floor button do you press to get to the office?
STORY
	
	print ">> "
	button = gets.chomp()

	if button == "23A"
		return :lobby
	elsif button == "29"
		return :wrong_office
	else
		return :wrong_floor
	end
end

def wrong_floor()
	puts <<STORY
Without a second thought, you step out of the elevator to the floor you chose.
Suddenly, you felt eyes boring into you, so you quickly look up.
You are shocked to notice a hundred pair of eyes staring at you.
You are suddenly aware that the room was shrouded in a dark and gloomy aura.
It seems that you have stumbled into what is known as "the common office workspace"
Unfortinately for you, desperate for extra assistance,
the employees rushed over to you, before leaving you stuck with photocopying work
for the rest of the day.

Result: You died of boredom.
STORY

	return :lose
end

def wrong_office()
	puts <<STORY
As soon as the elevator comes to a halt, you step out into the corridor.
You nearly bump into Mr Tall-Dark-And-Handsome, but luckily
you managed to twist your body in the last second,
doing a twirl to one side in the process.
Shocked, the both of you stood stock still and stared,
before you eventually regained your voice.
"Aren't we having a meeting on this floor today?" you asked.
"No, that's tomorrow," he replied.
"Oh."
No worries, though. The both of you head back into elevator together
and head to the 23A floor instead.
STORY

	return :lobby
end

