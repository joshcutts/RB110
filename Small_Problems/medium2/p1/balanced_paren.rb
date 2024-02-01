# balanced_paren.rb

=begin

PROBLEM:
input: string with parenthesis
output: boolean; true if parenthesis are appropriately matched, false otherwise
false if 1st parenthesis is )

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

DATA STRUCTURE

'What (is) this?'
counter = 0
+ 1 
counter = 1
counter = 0
true

')Hey!('
counter = 0
counter -= 1
counter = -1
false

ALGORITHM
- initialize a counter variable at 0
- iterate through the characters in the string
  - if the character is (, add 1 to counter
  - if the character is ), subtract 1 from counter
  - if counter is <0 return false
- counter == 0

=end

def balanced?(string)
  counter = 0
  string.each_char do |char|
    if char == "("
      counter += 1
    elsif char == ")"
      counter -= 1
    end
    return false if counter < 0
  end
  counter == 0
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