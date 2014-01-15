class Lexicon

	Pair = Struct.new(:token, :word)	

	def scan(stuff)

		lexicon = {
			'north' => :direction,
			'south' => :direction,
			'east' => :direction,
			'west' => :direction,
			'go' => :verb,
			'stop' => :verb,
			'kill' => :verb,
			'eat' => :verb,
			'the' => :stop,
			'in' => :stop,
			'of' => :stop,
			'from' => :stop,
			'at' => :stop,
			'it' => :stop,
			'door' => :noun,
			'bear' => :noun,
			'princess' => :noun,
			'cabinet' => :noun,
			'cat' => :noun,
			'ice' => :noun
		}

		words = stuff.split()

		words.map do |word|
			test = word.downcase

			if lexicon.has_key?(test)
				token = lexicon[test]
			elsif convert_number(test)
				token = :number
				word = test.to_i()
			else	
				token = :error
			end

			Pair.new(token, word)
		end
	end

	def convert_number(s)
		begin
			Integer(s)
		rescue ArgumentError
			nil
		end
	end

end