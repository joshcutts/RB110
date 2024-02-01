p "    Hello     World   ".split

def hashtag_generator(string)
  new_string = string.split.map(&:capitalize).join("")
  return false if new_string.empty?
  "##{new_string}"
end