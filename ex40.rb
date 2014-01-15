class Song

	def initialize(lyrics)
		@lyrics = lyrics
	end

	def sing_me_a_song()
		for line in @lyrics
			puts line
		end
		puts
	end

	def print_summary()
		print @lyrics.first()
		puts "..."
		print "..."
		puts @lyrics.last()
		puts
	end

	def print_line(number)
		count = 1
		for line in @lyrics
			if count == number
				puts "Line #{number}: %s" % line
				puts
			end

			count += 1

		end
	end
end

happy_bday = Song.new(["Happy birthday to you",
					"I don't want to get sued",
					"So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around the family",
						"With pockets full of shells"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

song_lyric = ["Cats, cats",
			"Laughing babies",
			"People falling",
			"Hot, hot ladies",
			"Sleepy puppies",
			"Dancing babies",
			"Kittens, monkeys",
			"More hot ladies"]

viral_song = Song.new(song_lyric)
viral_song.sing_me_a_song()
viral_song.print_summary()
viral_song.sing_me_a_song()
viral_song.print_line(4)
