require_relative 'card.rb'

class Turn
	attr_reader :guess, :card

	def initialize(string, card)
		@guess = string
		@card = card
	end
	

	def correct?
		if @guess == @card.answer
			return true
		else
			return false
		end
	end

	def feedback
		x = correct?
		if x == true
			p "Correct!"
		else 
			p "Incorrect!"
		end
	end
end

	
