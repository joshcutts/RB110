
def disemvowel(str)
  selected_str = ""
  vowels = %w(a e i o u)
  str.each_char do |char|
    selected_str << char unless vowels.include?(char)
  end
  selected_str
end

p disemvowel("This website is for losers LOL!")