# stars.rb

def stars(num)
  spaces = (num/3.0).round
  (1..(num/2)).each do |x|
    puts "***".split("").join(" " * spaces).center(num)
    spaces -=1
  end

  spaces += 1
  puts "*" * num

  (1..(num/2)).each do |x|
    puts "***".split("").join(" " * spaces).center(num)
    spaces += 1
  end
end

# stars(7)
# stars(9)
stars(11)
