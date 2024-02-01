
def count_vowels(word)
  # vowel_count = 0
  # word.chars do |char|
  #   vowel_count += 1 if %w(a e i o u).include?(char.downcase)
  # end
  # vowel_count
  # p word.chars#.inject(0) {|count, char| count += 1 if %w(a e i o u).include?(char)}
end

# sample_word = 'programming'
# p sample_word.each_char.count {|char| %w(a e i o u).include?(char)}

# use count

def count_vowels(word)
  vowels = %w(a e i o u)
  word.chars.inject(0) do |count, char| 
    count += 1 if vowels.include?(char)
    count
  end
end

p count_vowels("programming")

p "programming".count("aeiou")