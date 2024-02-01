RANKS = %w(2 3 4 5 6 7 8 9 10 J Q K A)
SUITS = %w(Hearts Diamonds Clubs Spades)

def card_values
  values = (2..10).to_a + [10, 10, 10, 11]
  RANKS.zip(values).to_h
end

CARD_VALUES = card_values

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  # test_deck = {
  #   "Hearts" => ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"],
  #   "Diamonds" => ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"],
  #   "Clubs" => ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"],
  #   "Spades" => ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"],
  # }
  # test_deck
  SUITS.each_with_object({}) { |suit, deck| deck[suit] = RANKS.clone }
end

# real_deck = SUITS.each_with_object({}) { |suit, deck| deck[suit] = RANKS }
# p real_deck
# real_deck["Hearts"].delete("2")
# p real_deck

def pick_random_card(deck)
  # p "RANDOM CARD DECK #{deck}"
  suit = deck.keys.sample
  rank = deck[suit].sample
  [suit, rank]
end

def deal_card(deck)
  card = pick_random_card(deck)
  deck[card[0]].delete(card[1])
  [card]
end

def deal_two_cards(deck)
  hand = deal_card(deck)
  hand.concat(deal_card(deck))
  hand
end

def add_card!(hand, deck)
  hand.concat(deal_card(deck))
end

# test_deck = {
#   "Hearts" => ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"],
#   "Diamonds" => ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"],
#   "Clubs" => ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"],
#   "Spades" => ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"],
# }

# p test_deck
deck = initialize_deck

player_hand = deal_card(deck)

# p player_hand
# p deck

add_card!(player_hand, deck)
# p player_hand
# p deck


1000.times do |x|
  deck = initialize_deck
  # p x

  # p "initialized deck #{deck}"

  player_hand = deal_card(deck)
  # p "PLAYER HAND 1 #{player_hand}"
  # p "#{deck}"
  dealer_hand = deal_card(deck)
  # p "dealer HAND 1 #{dealer_hand}"
  # p "#{deck}"
  add_card!(player_hand, deck)
  # p "PLAYER HAND 2 #{player_hand}"
  # p "#{deck}"
  add_card!(dealer_hand, deck)
  # p "DEALER HAND 2 #{dealer_hand}"
  # p "#{deck}"
  # p "PLAYER HAND #{player_hand}"
  # p "DEALER HAND #{dealer_hand}"
  puts "BROKEN! PLAYER!" if player_hand[0] == player_hand[1]
  puts "BROKEN! DEALER!" if dealer_hand[0] == dealer_hand[1]
  puts "CROSSOVER" if player_hand[0] == dealer_hand[0]
  puts "CROSSOVER2" if player_hand[1] == dealer_hand[1]
  puts "DOUBLE CROSSOVER" if player_hand[0] == dealer_hand[1]
  puts "DOUBLE CROSSOVER 2" if player_hand[1] == dealer_hand[0]
end