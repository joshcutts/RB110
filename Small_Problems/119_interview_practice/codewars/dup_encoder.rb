# dup_encoder.rb

=begin

The goal of this exercise is to convert a string to a new string 
where each character in the new string is "(" if that character 
appears only once in the original string, or ")" if that character 
appears more than once in the original string. Ignore capitalization 
when determining if a character is a duplicate.

"din"      =>  "((("
"recede"   =>  "()()()"
"Success"  =>  ")())())"
"(( @"     =>  "))((" 


PROBLEM:
input: string
output: modified string where uniq chars are replcaced by "("
and non-unique chars are replaced by ")"

ignore case when selecting chars that are not unique

EXAMPLES:
"din"      =>  "((("
"recede"   =>  "()()()"
"Success"  =>  ")())())"
"(( @"     =>  "))((" 

DATA STRUCTURE:



ALGORITHM:
- create empty result string to hold final result
- create uniq var and assign to "("
- creae nonuniq var and assign to ")"
- iterate through the unique characters of the string
  - if the count in the original string is >= 2, add ")" to result
  - otherwise add "(" to the string
return the result string


=end

def duplicate_encode(str)
  str.downcase!
  result = ""
  
  str.chars.each do |char|
    if str.count(char) >= 2
      result << ")"
    else
      result << "("
    end
  end
  result
end


p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("