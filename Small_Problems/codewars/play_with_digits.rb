=begin

a**p + b **(p+1) + c**(p+2) + d**(p+3) = n*k

Examples:
n = 89; p = 1 ---> 1 since 8¹ + 9² = 89 = 89 * 1
n = 92; p = 1 ---> -1 since there is no k such that 9¹ + 2² equals 92 * k
n = 695; p = 2 ---> 2 since 6² + 9³ + 5⁴= 1390 = 695 * 2
n = 46288; p = 3 ---> 51 since 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

=end

=begin

PROBLEM:
input: integer
output: k
-1 if there is no k

EXAMPLES:
n = 695; p = 2 ---> 2 since 6² + 9³ + 5⁴= 1390 = 695 * 2

DATA STRUCTURE:
695
6 9 5
6 **2 + 9 ** (2+1) + 5 ** (2+2) = 1390
[695, 1390, ...]

4^2 =16
6^3 =216
2^4 = 16
8^5 = 32768
8^6 = 262144
295160

ALGORITHM:
- separate the integer into an array of digits
- create an array (1..n); where n is number of digits
- create a sum variable to hold the sum
- iterate through the digits
  - for each matching index position; raise the integer to the appropriate power & add to sum variable
- divide the sum by the number, if evenly divisible break and return the result of sum / num
- otherwise continue, break when 1st index position


=end

def dig_pow(n, p)
  digits = n.to_s.split("").map(&:to_i)
  powers = (p..digits.length+p).to_a
  sum = 0
  digits.each_with_index do |digit, index|
    sum += digit ** powers[index]
  end
  
  if sum % n == 0
    return sum / n
  else
    return -1
  end
end

p dig_pow(89, 1) #== 1
p dig_pow(92, 1) #== -1
p dig_pow(46288, 3) #== 51