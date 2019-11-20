require_relative 'deck.rb'

class Round
	attr_reader :deck, :turns, :num_correct, :current_card, :percent_correct\
			:percent_correct_by_category

	def initialize(d)
		@deck = d
		@turns = []
		@num_correct = 0
		@current_card = @deck.cards[0]
		@percent_correct = @turns.count
		@percent_correct_by_category = 
	end

	def take_turn(guess, card)
		turn = Turn.new(guess, card)
		@turns << turn
		if turn.correct?
			@num_correct ++
		end
		@deck.cards.shift
		return turn
	end
end

		

	
