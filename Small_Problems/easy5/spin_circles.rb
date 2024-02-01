# spin_circles.rb

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

a = "hello world"
p a.object_id
p spin_me(a) # "olleh dlrow"
p spin_me(a).object_id