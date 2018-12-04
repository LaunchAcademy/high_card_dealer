require 'pry'

# Note: we only need `require_relative` if we end up calling a class by name in our file's logic. As such, you may have to add more `require_relative` statements accordingly.
require_relative "lib/deck"
require_relative "lib/hand"

puts "GAME START"

# binding.pry

deck = Deck.new

puts "There are #{deck.cards.length} cards in the deck."

cards1 = deck.deal
cards2 = deck.deal

player1_hand = Hand.new(cards1)
player2_hand = Hand.new(cards2)

puts "Player 1 was dealt #{player1_hand.to_string}"
puts "Player 2 was dealt #{player2_hand.to_string}"
# binding.pry
puts "Player 1's hand value: #{player1_hand.total_value}"
puts "Player 2's hand value: #{player2_hand.total_value}"

if player1_hand.total_value > player2_hand.total_value
  puts "Player 1 won"
elsif player1_hand.total_value < player2_hand.total_value
  puts "Player 2 won"
else
  puts "TIE"
end


# binding.pry

# Player 1 wins the game!
