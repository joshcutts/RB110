# exes_and_ohs.rb

=begin

Check to see if a string has the same amount of 'x's and 'o's. 
The method must return a boolean and be case insensitive. 
The string can contain any char.

XO("ooxx") => true
XO("xooxx") => false
XO("ooxXm") => true
XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
XO("zzoo") => false

implicit: no x's and no o's returns true

=end

=begin

PROBLEM:
input: string with any character
output: boolean. true if # of x's == # of o's. Case insensitive

EXAMPLES:
XO("ooxx") => true
XO("xooxx") => false
XO("ooxXm") => true
XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
XO("zzoo") => false

DATA STRUCTURE:
"ooxx"
o = 0; x = 0
o
o = 1; x = 0
p 

ALGORITHM
- iterate through the downcased string and count # of x's
- iterate through the downcased string and count # of o's 
- x's == o's ?

=end

def XO(string)
  string = string.downcase
  x = string.count("x")
  o = string.count("o")
  x == o
end

p XO("ooxx") == true
p XO("xooxx") == false
p XO("ooxXm") == true
p XO("zpzpzpp") == true
p XO("zzoo") == false