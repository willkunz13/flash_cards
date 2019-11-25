require_relative 'round.rb'
require_relative 'card_generator.rb'
filename = 'cards.txt'

cards = CardGenerator.new(filename).cards
#p cards
deck = Deck.new(cards)
#p deck
round = Round.new(deck)
#p round
og_card_count = cards.count
card_counter = 1



puts "Welcome! You're playing with #{og_card_count} cards.\n\
-------------------------------------------------"
while(round.deck.cards != [])
	card = round.deck.cards[0]
	
	puts "This is card number #{card_counter} out of #{og_card_count}"
	puts "Question: #{card.question}"
	guess = gets.chomp
	round.take_turn(guess)
	card_counter += 1
	#p round.number_correct_by_category(:"PopCulture\n")
end


#p round.cards_in_category(:"PopCulture\n")

x = round.percent_correct_by_category(:"STEM\n")
y = round.percent_correct_by_category(:"Turing Staff\n")
z = round.percent_correct_by_category(:"PopCulture\n")
puts "****** Game over! ******\n\
You had	#{round.number_correct} correct guesses out of #{og_card_count}\
 for a total score of #{round.percent_correct}%.\n\
STEM - #{x}% correct\n\
Turing Staff - #{y}% correct\n\
Pop Culture - #{z}% correct\n"
	
