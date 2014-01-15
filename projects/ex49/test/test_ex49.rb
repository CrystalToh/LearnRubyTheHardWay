require 'test/unit'
require_relative '../lib/ex49'
require_relative '../lib/lexicon'

class ParserTests < Test::Unit::TestCase

	Pair = Lexicon::Pair
	@@lexicon = Lexicon.new()
	@@words = @@lexicon.scan("eat the ice")
	@@words_2 = @@lexicon.scan("cat eat the ice")
	@@words_3 = @@lexicon.scan("eat the ice")
	@@words_4 = @@lexicon.scan("cat eat the ice")
	@@words_5 = @@lexicon.scan("cat eat the ice")

	def test_parse_verb()
		assert_equal(Parser.parse_verb(@@words), Pair.new(:verb, 'eat'))
		
		exception = assert_raise(ParserError) {Parser.parse_verb([false])}
		assert_equal("Expected a verb next.", exception.message)
	end

	def test_parse_object()
		assert_equal(Parser.parse_object(@@words_2), Pair.new(:noun, 'cat'))

		exception = assert_raise(ParserError) {Parser.parse_object([false])}
		assert_equal("Expected a noun or direction next.", exception.message)
	end

	def test_parse_subject()
		result = Parser.parse_subject(@@words_3, Pair.new(:noun, 'cat'))

#		assert_equal(result, Sentence.new(Pair.new(:noun, 'cat'),
#					Pair.new(:verb, 'eat'),
#					Pair.new(:noun, 'ice')))

#		sentence = Parser.parse_subject(@@words, "cat")
#		assert_equal(sentence.subject, "cat")
#		assert_equal(sentence.verb, "eat")
#		assert_equal(sentence.object, "ice")
	end

	def test_parse_sentence()
		result = Parser.parse_sentence(@@words_4)
#		assert_equal(result.subject, "cat")
# 		assert_equal(result.verb, "eat")
# 		assert_equal(result.object, "ice")

		exception = assert_raise(ParserError) {Parser.parse_sentence([false])}
		assert_equal("Must start with subject, object, or verb not: ", exception.message)
	end

	def test_match()	
		assert_equal(Parser.match(@@words_5, :noun), Pair.new(:noun, 'cat'))
		assert_equal(Parser.match(@@words_5, :verb), Pair.new(:verb, 'eat'))
		assert_equal(Parser.match(@@words_5, :stop), Pair.new(:stop, 'the'))
		assert_equal(Parser.match(@@words_5, :noun), Pair.new(:noun, 'ice'))
	end

end