def lose()
	puts @quips[rand(@quips.length())]
	puts "\n----------------------------- \n"
	Process.exit(1)
end