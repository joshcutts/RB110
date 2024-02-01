# tic_tac_toe.rb

=begin
1. Display the initial empty 3x3 board
2. Ask the user to mark a square
3. Computer marks a square
4. Display the updated board state
5. If winner, display winner
6. If board is full, display tie
7. If neither winner nor board is full, go to #2
8. Play again?
9. If yes, go to #1
10. Good bye!
=end

require "pry"

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_COMBINATIONS = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                       [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                       [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system "clear"
  nums = brd.keys.map { |num| brd[num] == INITIAL_MARKER ? num : " " }
  puts "You're #{PLAYER_MARKER}. COMPUTER is #{COMPUTER_MARKER}".center(24)
  puts ""
  puts " #{nums[0]}    |#{nums[1]}    |#{nums[2]}     ".center(24)
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}".center(22)
  puts "     |     |     ".center(24)
  puts "-----|-----+-----".center(24)
  puts " #{nums[3]}    |#{nums[4]}    |#{nums[5]}     ".center(24)
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}".center(22)
  puts "     |     |     ".center(24)
  puts "-----|-----+-----".center(24)
  puts " #{nums[6]}    |#{nums[7]}    |#{nums[8]}     ".center(24)
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}".center(22)
  puts "     |     |     ".center(24)
  puts "".center(24)
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, separator=', ', last_separator='or')
  if arr.length == 1
    arr[0]
  elsif arr.length == 2
    arr[-1] = "#{last_separator} #{arr[-1].to_s}"
    "#{arr[0]} #{arr[1]}"
  else
    arr[-1] = "#{last_separator} #{arr[-1].to_s}"
    arr.join(separator)
  end
end

def player_places_piece!(brd)
  square = ""
  loop do
    prompt("Choose a square(#{joinor(empty_squares(brd))})")
    square = gets.chomp.to_i

    break if empty_squares(brd).include?(square)
    prompt("Sorry, that's not a valid choice")
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(brd)
  at_risk_square = 0
  WINNING_COMBINATIONS.each do |line|
    two_player_markers = brd.values_at(*line).count(PLAYER_MARKER) == 2
    one_empty_square = brd.values_at(*line).count(INITIAL_MARKER) == 1
    if two_player_markers && one_empty_square
      potential_at_risk_squares = brd.select do |square, _|
        line.include?(square)
      end
      at_risk_square = potential_at_risk_squares.key(" ")# unless potential_at_risk_squares.key("O")
    end
  end
  at_risk_square
end

def find_best_attack(brd)
  best_attack = 0
  WINNING_COMBINATIONS.each do |line|
    two_computer_markers = brd.values_at(*line).count(COMPUTER_MARKER) == 2
    one_empty_square = brd.values_at(*line).count(INITIAL_MARKER) == 1
    if two_computer_markers && one_empty_square
      potential_best_attack = brd.select do |square, _|
        line.include?(square)
      end
      best_attack = potential_best_attack.key(" ")# unless potential_best_attack.key("X")
    end
  end
  best_attack
end

def computer_places_piece!(brd)
  at_risk_square = find_at_risk_square(brd)
  best_attack = find_best_attack(brd)
  if brd.keys.include?(best_attack)
    brd[best_attack] = COMPUTER_MARKER
  elsif brd.keys.include?(at_risk_square)
    brd[at_risk_square] = COMPUTER_MARKER
  elsif empty_squares(brd).include?(5)
    brd[5] = COMPUTER_MARKER
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def place_piece!(brd, current_player)
  if current_player == "player"
    player_places_piece!(brd)
  else
    computer_places_piece!(brd)
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def detect_winner(brd)
  WINNING_COMBINATIONS.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def display_round_winner_or_tie(brd, round)
  if someone_won?(brd)
    prompt "#{detect_winner(brd)} won round #{round}!"
    sleep(3)
  else
    prompt "Round #{round} is a tie!"
    sleep(3)
  end
end

def increment_score(brd, player_wins, computer_wins)
  player_wins += 1 if detect_winner(brd) == "Player"
  computer_wins += 1 if detect_winner(brd) == "Computer"
  return player_wins, computer_wins
end

def display_round(round)
  puts ""
  puts '-------------------------'
  puts '|' + "Round: #{round}".center(23) + '|'
  puts '-------------------------'
end

def display_score(player_wins, computer_wins)
  puts '|' + 'Current Score'.center(23) + '|'
  puts '-------------------------'
  puts "| X wins: #{player_wins} | O wins: #{computer_wins} | "
  puts '-------------------------'
  puts ""
end

def display_game_winner(player_wins, computer_wins)
  if player_wins == 5 or computer_wins == 5
    if player_wins == 5
      prompt "You won 5 rounds! You win the game!"
      sleep(1)
    else
      prompt "The computer won 5 rounds! Try again!"
      sleep(1)
    end
  end
end

def alternate_player(current)
  current == "player" ? "computer" : "player"
end

def select_who_goes_first
  first = ""
  loop do
    prompt "Do you want computer to have first turn or you? (Computer/Player)"
    first = gets.chomp
    break if ["computer","player"].include?(first.downcase)
    prompt "Invalid input. Please select either Computer or Player"
  end
  first
end

def play_again?(player_wins, computer_wins)
  return true unless player_wins == 5 || computer_wins == 5
  loop do
    prompt "Do you want to play again?"
    input = gets.chomp.downcase
    return input == "y" if ['y', 'n'].include?(input)
    prompt "Invalid input. Please enter Y or N"
  end
end

system "clear"
prompt "Welcome to Tic-Tac-Toe!"
prompt "The first player to win 5 rounds, wins!"
current_player = select_who_goes_first
player_wins = 0
computer_wins = 0
round = 1

loop do
  board = initialize_board

  loop do
    display_board(board)
    display_round(round)
    display_score(player_wins, computer_wins)

    place_piece!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end
  round += 1
  display_board(board)
  display_round_winner_or_tie(board, round)
  player_wins, computer_wins = increment_score(board, player_wins, computer_wins)
  display_game_winner(player_wins, computer_wins)

  break unless play_again?(player_wins, computer_wins)
end
prompt "Thanks for playing!"
