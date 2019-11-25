require_relative 'deck.rb'

class Round
	attr_reader :deck, :turns, :num_correct, :correct

	def initialize(d)
		@deck = d
		@turns = []
		@correct = []
		@corr_in_cat = []
		@card_count = []
		
		
	end

	def take_turn(guess)
		card = @deck.cards.first
		turn = Turn.new(guess, card)
		@turns << turn
		@card_count << card
		if turn.correct?
			@correct << turn.card
		end
		turn.feedback
		@deck.cards.delete_at(0)
		return turn
	end

	def current_card
		return @deck.cards[0]
	end
	
	def number_correct
		return @correct.count
	end

	def cards_in_category(type)
		new_array = []
		@deck.og_cards.each do |card|
			if card.category == type
				new_array << card
			end
		end
		return new_array.count
	end

	def number_correct_by_category(category)
		new_array = []
		@correct.each do |card|
			if card.category == category
				new_array << card
			end
		end
	return new_array.count
	end
	
	def percent_correct
		x = @correct.count.to_f
		y = deck.og_cards.count
		z = x / y * 100
		return z.to_i
	end

	def percent_correct_by_category(category)
		x = number_correct_by_category(category).to_f
		y = cards_in_category(category)
		if y == 0
			y = 1
			return 0
		end
		z = x / y * 100
		return z.to_i
	end
end

		

	
