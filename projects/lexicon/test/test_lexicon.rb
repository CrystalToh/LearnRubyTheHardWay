require 'test/unit'
require_relative "../lib/lexicon"

class LexiconTests < Test::Unit::TestCase

	Pair = Lexicon::Pair
	@@lexicon = Lexicon.new()

	def test_directions()
		assert_equal([Pair.new(:direction, 'north')], @@lexicon.scan("north"))
		result = @@lexicon.scan("north south east")
		assert_equal(result, [Pair.new(:direction, 'north'),
					Pair.new(:direction, 'south'),
					Pair.new(:direction, 'east')])
		assert_equal([Pair.new(:direction, 'west')], @@lexicon.scan("west"))
	end

	def test_verbs()
		assert_equal(@@lexicon.scan("go"), [Pair.new(:verb, 'go')])
		result = @@lexicon.scan("go kill eat")
		assert_equal(result, [Pair.new(:verb, 'go'),
					Pair.new(:verb, 'kill'),
					Pair.new(:verb, 'eat')])
		assert_equal(@@lexicon.scan("stop"), [Pair.new(:verb, 'stop')])
	end

	def test_stops()
		assert_equal(@@lexicon.scan("the"), [Pair.new(:stop, 'the')])
		result = @@lexicon.scan("the in of")
		assert_equal(result, [Pair.new(:stop, 'the'),
					Pair.new(:stop, 'in'),
					Pair.new(:stop, 'of')])
		result = @@lexicon.scan("from at it")
		assert_equal(result, [Pair.new(:stop, 'from'),
					Pair.new(:stop, 'at'),
					Pair.new(:stop, 'it')])
	end

	def test_nouns()
		assert_equal(@@lexicon.scan("bear"), [Pair.new(:noun, 'bear')])
		result = @@lexicon.scan("bear princess")
		assert_equal(result, [Pair.new(:noun, 'bear'),
					Pair.new(:noun, 'princess')])
		result = @@lexicon.scan("door cabinet")
		assert_equal(result, [Pair.new(:noun, 'door'),
					Pair.new(:noun, 'cabinet')])
		result = @@lexicon.scan("cat ice")
		assert_equal(result, [Pair.new(:noun, 'cat'),
					Pair.new(:noun, 'ice')])
	end

	def test_number()
		assert_equal(@@lexicon.scan("1234"), [Pair.new(:number, 1234)])
		result = @@lexicon.scan("bear IAS princess")
		assert_equal(result, [Pair.new(:noun, 'bear'),
					Pair.new(:error, 'IAS'),
					Pair.new(:noun, 'princess')])
		result = @@lexicon.scan("920207 TAS")
		assert_equal(result, [Pair.new(:number, 920207),
					Pair.new(:error, "TAS")])
	end

	def test_case()
		result = @@lexicon.scan("ICE Cat")
		assert_equal(result, [Pair.new(:noun, 'ICE'),
					Pair.new(:noun, "Cat")])
	end

end
