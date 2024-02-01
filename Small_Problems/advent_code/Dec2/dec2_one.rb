#dec2_one.rb

=begin

ALGORITHM
- reformat input so that each game outcome is in the form of hashes that can be iterated over
- check the condition against the outcomes of each game

=end

Dir.chdir("/Users/joshuacutts/Documents/LaunchSchool/advent_of_code/2December")
# games = File.read('sample_input.txt').split(/\n/)
games = File.read('day2_input.txt').split(/\n/)

games_hash = games.map { |game| game.split(": ")}.to_h
games_hash = games_hash.map { |game, cubes| [game, cubes.split("; ")]}.to_h
# p games_hash

# p [["blue", 3]].to_h

game_keys = games_hash.keys
outcomes = []
cube_values = games_hash.values
# p cube_values
game_counter = 0
loop do
  p game = cube_values[game_counter]
  set_counter = 0
  game_outcome = []
  loop do
    set = game[set_counter]
    set = set.split(", ")
    p set
    cube_color_counter = 0
    color_number_hash = Hash.new
    loop do
      p color_number = set[cube_color_counter].split(" ")
      color_number_hash[color_number[1]] = color_number[0].to_i
      cube_color_counter += 1
      break if cube_color_counter >= set.length
    end
    game_outcome << color_number_hash
    set_counter += 1
    break if set_counter >= game.length
  end
  outcomes << game_outcome
  game_counter += 1
  break if game_counter >= cube_values.length
end

cubes = {"red"=>12, "green"=>13, "blue"=>14}

possible = {}

reformatted_game_results = game_keys.zip(outcomes).to_h
reformatted_game_results.each do |game, sets|
  game_result = []
  sets.each do |result, result_num|
    cubes.each do |color, num|
      if result[color].nil? || result[color] <= num 
        game_result << true
      else
        game_result << false
      end
    end
  end
  possible[game] = game_result
end

final = possible.map do |key, outcomes|
  key.split(" ")[-1] if outcomes.all?
end

# p final

p final.compact.map(&:to_i).sum