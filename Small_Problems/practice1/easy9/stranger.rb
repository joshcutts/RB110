# stranger.rb

=begin

Create a method that takes 2 arguments, an array and a hash. 
The array will contain 2 or more elements that, when combined with 
adjoining spaces, will produce a person's name. The hash will contain 
two keys, :title and :occupation, and the appropriate values. Your method 
should return a greeting that uses the person's full name, and mentions 
the person's title and occupation.

PROBLEM:
input: 
1) array of name (contains at least 2 elements that are strings)
2) hash that has 2 keys, :title & :occupation

output: string greeting including name and titlte and occupation

EXAMPLES:
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> "Hello, John Q Doe! Nice to have a Master Plumber around."

DATA STRUCTURE:


ALGORITHM:
- 


=end

def greetings(arr, hash)
  "Hello, #{arr.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end


p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == "Hello, John Q Doe! Nice to have a Master Plumber around."