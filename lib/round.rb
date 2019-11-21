require_relative 'deck.rb'

class Round
	attr_reader :deck, :turns, :num_correct

	def initialize(d)
		@deck = d
		@turns = []
		@correct = []
	end

	def take_turn(guess, card)
		turn = Turn.new(guess, card)
		@turns << turn
		if turn.correct?
			@correct << turn
		end
		@deck.cards.shift
		return turn
	end

	def current_card
		return @deck.cards[0]
	end
	
	def number_correct
		return @correct.count
	end

	def number_correct_by_category(weird)
		cdeck = Deck.new(@correct)
		return cdeck.cards_in_category(weird)
	end
	
	def percent_correct
		x = @correct.count
		y = @turns.count
		return x / y
	end

	def percent_correct_by_category(weird)	
		x = number_correct_by_category(weird)
		y = @correct.count
		return x / y
	end
end

		

	
