hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |_, value|
  value.each do |words|
    words.each_char do |char|
      puts char if %w(a e i o u).include?(char)
    end
  end
end