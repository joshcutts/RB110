hands_wagers = [
  ["32T3K", "765"],
  ["T55J5", "684"],
  ["KK677", "28"],
  ["KTJJT", "220"],
  ["QQQJA", "483"],
  ["JJJJJ", "123"]
]

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

# p find_most_frequent_char("KTJJT")

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
p classified_hands
