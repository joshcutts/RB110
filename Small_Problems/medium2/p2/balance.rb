# balance.rb

=begin

PROBLEM:
input: string with some number of parenthesis
output: true if parentheses are correctly balanced, false otherwise

properly balanced
1) matching ()
2) ( comes before ) (aka ")" never comes first)

EXAMPLES:
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
balanced?('What ())(is() up') == false

DATA STRUCTURE:


ALGORITHM:
- initialize a balanced variable at 0
- iterate through the string one character at a time
  - if the char is "(", add 1 to balanced varaible
  - if the char is ")"
  - if balanced is every less than 1 return false
- return true if balanced variable is 0

=end

def balanced?(str)
  balanced = 0
  str.each_char do |char|
    if char == "("
      balanced += 1
    elsif char == ")"
      balanced -= 1
    end
    return false if balanced < 0
  end
  balanced == 0
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false
