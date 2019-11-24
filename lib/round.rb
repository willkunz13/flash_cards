require_relative 'deck.rb'

class Round
	attr_reader :deck, :turns, :num_correct

	def initialize(d)
		@deck = d
		@turns = []
		@correct = []
		@corr_in_cat = []
		@card_count = []
	end

	def take_turn(guess)
		card = @deck.first
		turn = Turn.new(guess, card)
		@turns << turn
		@card_count << @deck.cards.first
		if turn.correct?
			@correct << @deck.cards.first
		end
		@deck.cards.delete_at[0]
		return turn
	end

	def current_card
		return @deck.cards[0]
	end
	
	def number_correct
		return @correct.count
	end

	def number_correct_by_category(category)
		@corr_in_cat << @correct.cards_in_category(category)
		return @corr_in_cat
	end
	
	def percent_correct
		x = @correct.count
		y = @turns.count
		return x / y
	end

	def percent_correct_by_category(category)
		x = number_correct_by category(category)
		y = @card_count
		return x / y
	end
end

		

	
