
require_relative 'card.rb'
filename = 'cards.txt'

class CardGenerator

	attr_accessor :cards
	
	def initialize(filename)
		@cards = []
		lines = File.open(filename).to_a
		x = 0
		
		lines.each do |line|
			temp_a = line.split(',')
			q_holder = temp_a[0]
			a_holder = temp_a[1]
			c_holder = temp_a[2].to_sym
			card = Card.new(q_holder, a_holder, c_holder)
			@cards << card
		end
		
	end
end


	
