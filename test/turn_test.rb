require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/turn'

class TurnTest < Minitest::Test

	def setup
		card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
		turn = Turn.new("Juneau", card)
	end
	def test_it_exists
		card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
		turn = Turn.new("Juneau", card)
		assert_instance_of Card, card
		assert_instance_of Turn, turn
	end

	def test_card
		card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
		turn = Turn.new("Juneau", card)
		assert(turn.card)
	end
	
	def test_guess
		card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
		turn = Turn.new("Juneau", card)
		assert(turn.guess)
	end

	def test_correct?
		card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
		turn = Turn.new("Juneau", card)
		assert_equal turn.correct?, true
	end

	def test_feedback
		card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
		turn = Turn.new("Juneau", card)
		assert(turn.feedback)
	end


	def test_false_answer
		ncard = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
		nturn =Turn.new("Saturn", ncard)

		assert_equal nturn.guess, "Saturn"
		refute(nturn.correct?)
		assert_equal nturn.feedback, "Incorrect!"
	end
end

