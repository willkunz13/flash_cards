require_relative 'turn.rb'

class Deck
	attr_accessor :cards
	
	def initialize(cards)
		@cards = cards
	end
	
	def count
		@cards.count
	end

	def cards_in_category(type)
		new_array = []
		@cards.each do |card|
			if card.category == type
				new_array.append(card)
			end
		end
	return new_array
	end
end

#uno = Card.new("Test?", "Test", :Test)
#dos = Card.new("Test?", "Test", :Tset)
#cards = [uno, dos]
#deck = Deck.new(cards)
#p deck.count
#p deck.cards_in_category(:Tset)



