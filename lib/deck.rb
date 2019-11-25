require_relative 'turn.rb'

class Deck
	attr_accessor :cards, :og_cards
	
	def initialize(cards)
		@cards = cards
		@og_cards = @cards.dup
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


#uno = Card.new("1?", "1", :Test)
#dos = Card.new("2?", "2", :Tset)
#cards = [uno, dos]
#deck = Deck.new(cards)
#p deck.cards
#p deck.og_cards
#deck.og_cards.delete_at(0)

#p deck.count
#p deck
#p deck.cards_in_category(:Tset)



