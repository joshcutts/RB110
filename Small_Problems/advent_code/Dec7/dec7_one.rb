=begin

Five of a kind, where all five cards have the same label: AAAAA
Four of a kind, where four cards have the same label and one card has a different label: AA8AA
Full house, where three cards have the same label, and the remaining two cards share a different label: 23332
Three of a kind, where three cards have the same label, and the remaining two cards are each different from any other card in the hand: TTT98
Two pair, where two cards share one label, two other cards share a second label, and the remaining card has a third label: 23432
One pair, where two cards share one label, and the other three cards have a different label from the pair and each other: A23A4
High card, where all cards' labels are distinct: 23456

32T3K 765
T55J5 684
KK677 28
KTJJT 220
QQQJA 483

PROBLEM:
input: 5 cards (A K Q J T 9 8 7 6 5 4 3 2) & corresponding wager (integer)
output: integer - sum of wager * rank multiplier for each hand

EXAMPLES:
32T3K 765 - 1 pair
T55J5 684 - 3 of kind
KK677 28 - 3 of kind
KTJJT 220 - 2 pair
QQQJA 483 - 3 of kind



DATA STRUCTURE:
CLASSIFY EACH HAND
[
  {"1_pair" => ["32T3K", "765"]}
  {"2_pair" => ["KTJJT", "220"]}
  {"3_kind" => ["T55J5", "684"]}
  {"3_kind" => ["KK677", "28"]}
  {"3_kind" => ["QQQJA", "483"]}
]

GROUP HANDS BY TYPE
{
  "1_pair" => ["32T3K", "765"],
  "2_pair" => ["KTJJT", "220"],
  "3_kind" => [["T55J5", "684"], ["KK677", "28"], ["QQQJA", "483"]]
}

SORT EACH TYPE
{
  "1_pair" => ["32T3K", "765"],
  "2_pair" => ["KTJJT", "220"],
  "3_kind" => [["T55J5", "684"], ["QQQJA", "483"], ["KK677", "28"]]
}

[high_card, one_pair, two_pair, three_of_kind, full_house, four_of_kind, five_of_kind]



OVERALL
- classify hand type
- group hands by type
- sort hands within each type
- order sorted hands by type
- create array where each element is wager * multiplier
  - iterate through ordered sorted hands 1..final_hand
  - multiply each wage by the current multiplier
- calculate the sum of the generated array

classify_hand_type ALGORITHM
- iterate through array of hands and values
  - if the hand has 5 of one card rank => five_of_kind
  - elsif the hand has 4 of one card rank => four_of_kind
  - elsif the hand has 3 of one card rank && 2 of a different card rank => full_house
  - elsif the hand has 3 of one card rank => three_of_kind
  - elsif the hand has 2 of one card rank && 2 of a different card rank => two_pair
  - elsif the hand has 2 of one card rank => one_pair
  - else => high_card

type_sort ALGORITHM
- iterate through the array of cards/wagers
  - compare the current hand to the next hand
    - iterate through the current hand one character at a time
    - if the current character from the first and second hands are different
      - swap if the card rank at current position is < next position
      - add true to swap array
    - else
      add false to swap array
  - break if all swaps were false
- return sorted cards


=end
RANKS = %w(A K Q T 9 8 7 6 5 4 3 2 J).reverse

Dir.chdir("/Users/joshuacutts/Documents/Documents - Joshua’s MacBook Pro/LaunchSchool/advent_of_code/7December")
arr = File.read('day7_input.txt').split(/\n/)
hands_wagers = arr.map {|hand_wager| hand_wager.split(" ")}
# hands_wagers = [
#   ["32T3K", "765"],
#   ["T55J5", "684"],
#   ["KK677", "28"],
#   ["KTJJT", "220"],
#   ["QQQJA", "483"]
# ]

def full_house?(str)
  counts = Hash.new(0)
  
  str.each_char do |char|
    counts[char] += 1
  end

  pairs_count = counts.values.count { |count| count == 2 }
  three_of_kind_count = counts.values.count { |count| count == 3}
  
  (pairs_count == 1 && three_of_kind_count == 1)
end

def two_pair?(str)
  counts = Hash.new(0)
  
  str.each_char do |char|
    counts[char] += 1
  end

  pairs_count = counts.values.count { |count| count == 2 }
  
  (pairs_count == 2)
end

def find_most_frequent_char(string)
  return "J" if string.chars.all?("J")
  letter_count = string.chars.tally
  letter_count.delete("J")
  letter_count.sort_by { |key, value| value}[-1][-2]
end

def classify_type(hand)
  most_frequent_char = find_most_frequent_char(hand)

  hand = hand.gsub(most_frequent_char, "J").split("").sort.join("")

  five_of_kind_pattern = /(.)\1{4}/
  four_of_kind_pattern = /(.)\1{3}/
  three_of_kind_pattern = /(.)\1{2}/
  pair_pattern = /(.).*\1/
  two_of_kind_pattern = /(.).*\1/

  if hand.match?(five_of_kind_pattern)
    "five_of_kind"
  elsif hand.match?(four_of_kind_pattern)
    "four_of_kind"
  elsif full_house?(hand)
    "full_house" 
  elsif hand.match?(three_of_kind_pattern)
    "three_of_kind"
  elsif two_pair?(hand)
    "two_pair"
  elsif hand.match?(pair_pattern)
    "pair"
  else
    "high_card"
  end
end

def classify_hands(hands)
  classified_hands = []
  hands.each do |hand|
    classified_hands << {classify_type(hand[0])=> hand}
  end
  classified_hands
end

classified_hands = classify_hands(hands_wagers)
# p classified_hands

reformat_classified_hands = {}
classified_hands.each do |classification_hash|
  if reformat_classified_hands.keys.include?(classification_hash.keys[0])
    reformat_classified_hands[classification_hash.keys[0]] << classification_hash[classification_hash.keys[0]]
  else
    reformat_classified_hands[classification_hash.keys[0]] = [classification_hash[classification_hash.keys[0]]]
  end
end

# p reformat_classified_hands

def type_sort(cards_array)
  swap_condition = true
  while swap_condition
    swap_holder_array = []
    (0..(cards_array.length-2)).each do |i|
      catch(:done) do
        (0..4).each do |card_i|
          current_card = cards_array[i][0]
          next_card = cards_array[i+1][0]
          if current_card[card_i] != next_card[card_i]
            if (RANKS.find_index(current_card[card_i]) <=> RANKS.find_index(next_card[card_i])) == 1
              cards_array[i], cards_array[i+1] = cards_array[i+1], cards_array[i]
              swap_holder_array << true
              throw(:done)
            else
              swap_holder_array << false
              throw(:done)
            end
          end
        end
      end
    end
    swap_condition = false if swap_holder_array.all?(false)
  end
  cards_array
end

type_order = %w(high_card pair two_pair three_of_kind full_house four_of_kind five_of_kind)

sorted_classified_hands = {}
reformat_classified_hands.each do |classification, type_hands_wagers|
  sorted_classified_hands[classification] = type_sort(type_hands_wagers)
end

ordered_classified_hands =  sorted_classified_hands.sort_by {|classification, type_hands_wagers| type_order.find_index(classification)}.to_h

flattened_array_with_wagers = ordered_classified_hands.values.flatten.each_slice(2).to_a

p flattened_array_with_wagers.map.with_index { |hand_wager, index| (hand_wager[1].to_i * (index+1)) }.sum
