HEX_CHARS = %w(0 1 2 3 4 5 6 7 8 9 A B C D E F)

def generate_x_digit(num)
  string = ""
  num.times {|x| string << HEX_CHARS.sample}
  string
end

def generate_uuid()
  nums = [8, 4, 4, 4, 12]
  nums.map { |n| generate_x_digit(n)}.join("-")
end

p generate_uuid