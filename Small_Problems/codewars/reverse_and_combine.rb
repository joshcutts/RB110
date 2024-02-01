def reverse_and_combine_text(string)
  words = string.split
  return string if words.length == 1

  # odd_length = words.length.odd?

  # if odd_length
  #   last_element = words.pop.reverse
  # end
  
  loop do 
    words = words.map {|word| word.reverse}
    counter = 0
    combined_words = []
    loop do
      if counter == words.length - 2
        combined_words << words[-1]
      end
      new_word = words[counter] << words[counter +1]
      combined_words << new_word
      counter += 2
      break if counter >= words.length - 1
    end
    words = combined_words
    break if words.length <= 1
  end
 
  # if odd_length
  #   words.join << last_element
  # else
  words.join
end



p reverse_and_combine_text("abc def")  == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"