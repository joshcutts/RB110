
=begin

PROBLEM:
input: integer
output: integer in expanded form

EXAMPLES:
p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'

DATA STRUCTURE:


ALGORITHM:
- create an empty array to hold string which will make up components of the expanded form
- use divmod to get remainder
  - a captures element 1
  - b captures element 2
  - b is the remainder and is prepended or unshifted to start of array as a string
  - repeat procedure until a is single digit
- join the array with " + " as the separator

=end

# def expanded_form(num)
#   result = []
#   divisor = 10
#   loop do
#     a, b = num.divmod(divisor)
#     result.unshift(b.to_s)
#     num = a * divisor
#     divisor *= 10
#     break if num < 10
#   end
#   result.delete("0")
#   result.join(" + ")
# end

def expanded_form(num)
  result = []
  multiplier = 1
  num.to_s.chars.reverse_each do |digit|
    result.unshift(digit.to_i * multiplier)
    multiplier *= 10
  end
  result.delete(0)
  result.join(" + ")
end

p expanded_form(12) #== '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'

# p 42.divmod(10)
# p 70304.divmod(10)
# p 70300.divmod(100)
# p 70300.divmod(1000)
# p 70000.divmod(10000)

# p [2, 3, 4].unshift(1)