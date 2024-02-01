# 21.rb

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
  SUITS.each_with_object({}) { |suit, deck| deck[suit] = RANKS.dup }
end

def pick_random_card(deck)
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

def display_game(player, dealer, scores, turn)
  system "clear"
  puts ""
  puts "PLAYER CARDS - VALUE #{scores[:player_score]}"
  puts "------------"
  player.each { |card| puts card.reverse.join(" ") }
  puts ""
  puts "DEALER CARDS" unless turn == "dealer"
  puts "DEALER CARDS - VALUE #{scores[:dealer_score]}" if turn == "dealer"
  puts "------------"
  dealer.each_with_index do |card, index|
    if turn == "player"
      puts index == 0 ? '?? Hidden ??' : card.reverse.join(' ')
    else
      puts card.reverse.join(' ')
    end
  end
  puts
end

def hit_or_stay?
  loop do
    move = gets.chomp
    return move == 'hit' if ['hit', 'stay', 'h', 's'].include?(move)
    puts "Invalid input. Please enter 'hit' or 'stay'"
  end
end

def calculate_score(hand)
  ranks_array = hand.map { |card| card[1] }
  score = CARD_VALUES.values_at(*ranks_array).sum
  if score > 21 && ranks_array.include?("A")
    aces_count = ranks_array.count("A")
    ranks_array.reject! { |rank| rank == "A" }
    score = CARD_VALUES.values_at(*ranks_array).sum
    score += aces_count
  end
  score
end

def determine_winner(scores, bust)
  if bust == "Player_bust"
    "Dealer"
  elsif bust == "Dealer_bust"
    "Player"
  else
    scores[:player_score] > scores[:dealer_score] ? 'Player' : 'Dealer'
  end
end

def declare_outcome(winner, bust)
  sleep(1)
  if bust == 'Player_bust'
    prompt 'You busted! Dealer wins!'
  elsif bust == 'Dealer_bust'
    prompt 'Dealer busted! You win!'
  elsif winner == 'Player'
    prompt 'You win!'
  else
    prompt 'Dealer wins!'
  end
  sleep(1)
end

def increment!(overall_scores, winner, bust)
  if bust == "Player_bust"
    overall_scores[:dealer_score] += 1
  elsif bust == "Dealer_bust"
    overall_scores[:player_score] += 1
  elsif winner == 'Player'
      overall_scores[:player_score] += 1
  elsif winner == 'Dealer'
    overall_scores[:dealer_score] += 1
  end

end

def display_current_overall_score(overall_scores)
  [".", "..", "..."].each do 
    |elipsis| puts elipsis 
    sleep(0.75)
  end
  if overall_scores[:player_score] == 1
    prompt "Currently you have #{overall_scores[:player_score]} win, and"
  elsif overall_scores[:player_score] > 1 || overall_scores[:player_score] == 0
    prompt "Currently you have #{overall_scores[:player_score]} wins, and"
  end
  if overall_scores[:dealer_score] == 1
    prompt "The dealer has #{overall_scores[:dealer_score]} wins."
  elsif overall_scores[:dealer_score] > 1 || overall_scores[:dealer_score] == 0
    prompt "The dealer has #{overall_scores[:dealer_score]} wins."
  end
  prompt "First to 5 wins is the grand winner!"
  sleep(4)
end

def display_grandwinner(overall_scores)
  prompt "You are the grandwinner!" if overall_scores[:player_score] == 5
  prompt "The dealer is the grandwinner!" if overall_scores[:dealer_score] == 5
  sleep(5)
end

def play_again?
  loop do
    prompt "Do you want to play again? (y or n)"
    answer = gets.chomp
    return answer == "y" if ['yes', 'no', 'y', 'n'].include?(answer.downcase)
  end
end

system "clear"
prompt 'Welcome to Twenty-One!'
prompt 'You play against the dealer. Your objective is to reach 21 points without going over'
prompt "First to win 5 games, is the grand winner!"
sleep(3)

loop do
  overall_scores = {
    player_score: 0,
    dealer_score: 0}
  loop do
    deck = initialize_deck
    player_hand = deal_two_cards(deck)
    dealer_hand = deal_two_cards(deck)
    scores = {
      player_score: calculate_score(player_hand),
      dealer_score: calculate_score(dealer_hand)
    }
    bust = nil
    turn = 'player'
    display_game(player_hand, dealer_hand, scores, turn)

    loop do
      prompt "Do you want to hit or stay?"

      if hit_or_stay?
        add_card!(player_hand, deck)
        scores[:player_score] = calculate_score(player_hand)
        display_game(player_hand, dealer_hand, scores, turn)
        if scores[:player_score] > 21
          bust = 'Player_bust'
          break
        end
      else
        prompt 'You chose to stay!'
        sleep(2)
        break
      end
    end

    turn = 'dealer'
    display_game(player_hand, dealer_hand, scores, turn)

    prompt "Now it is the dealer's turn..." unless bust == "Player_bust"
    sleep(1)
    while scores[:dealer_score] <= 17 && bust != "Player_bust"
      prompt 'Dealer hits'
      sleep(1)
      add_card!(dealer_hand, deck)
      scores[:dealer_score] = calculate_score(dealer_hand)
      display_game(player_hand, dealer_hand, scores, turn)
      sleep(1)
      if scores[:dealer_score] > 21
        bust = 'Dealer_bust'
        break
      end
    end

    display_game(player_hand, dealer_hand, scores, turn)
    prompt 'Dealer stays' unless bust == 'Player_bust' || bust == "Dealer_bust"
    sleep(1)

    winner = determine_winner(scores, bust)
    increment!(overall_scores, winner, bust)
    declare_outcome(winner, bust)
    display_current_overall_score(overall_scores)
    display_grandwinner(overall_scores)
    if overall_scores.values.any? {|score| score == 5}
      break unless play_again?
    end
  end
end