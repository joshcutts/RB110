# def remove_vowels(arr)
#   arr.map { |word| word.scan(/[^aeiouAEIOU]/).join}
# end

def remove_vowels(arr)
  vowels = %w(a e i o u A E I O U)
  arr.map do |word|
    new_word = ""
    word.each_char do |char|
      new_word << char unless vowels.include?(char)
    end
    new_word
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

