# likes.rb

=begin

You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.

Implement the function which takes an array containing the names of people that like an item. It must return the display text as shown in the examples:


[]                                -->  "no one likes this"
["Peter"]                         -->  "Peter likes this"
["Jacob", "Alex"]                 -->  "Jacob and Alex like this"
["Max", "John", "Mark"]           -->  "Max, John and Mark like this"
["Alex", "Jacob", "Mark", "Max"]  -->  "Alex, Jacob and 2 others like this"

PROBLEM:
input: array of names (strings)
output: string that is verbal description of who likes a post

if empty array return "no one likes this"
if one name return "#{name} likes this"
two names return names separated by and
three names, comma separate first 2 names with an "and" between last 2 names
4 or more names display first 2 names then "and x others"
- where x is names -2 

EXAMPLES:
p likes([]) == 'no one likes this'
p likes(['Peter']) == 'Peter likes this'
p likes(['Jacob', 'Alex']) == 'Jacob and Alex like this'
p likes(['Max', 'John', 'Mark']) == 'Max, John and Mark like this'
p likes(['Alex', 'Jacob', 'Mark', 'Max']) == 'Alex, Jacob and 2 others like this'

DATA STRUCTURE:
array of names

ALGORITHM:
- if empty array
  - no one likes this
- else 1 name
  - name likes this
- else 2 names
  - name and name like this
- else 3 names
  -name, name and name like this
- else
  - name, name and (length - 2) others like this
end



=end

def likes(names)
  if names.empty?
    "no one likes this"
  elsif names.length == 1
    "#{names[0]} likes this"
  elsif names.length == 2
    "#{names[0]} and #{names[1]} like this"
  elsif names.length == 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{names.length - 2} others like this"
  end
end


p likes([]) == 'no one likes this'
p likes(['Peter']) == 'Peter likes this'
p likes(['Jacob', 'Alex']) == 'Jacob and Alex like this'
p likes(['Max', 'John', 'Mark']) == 'Max, John and Mark like this'
p likes(['Alex', 'Jacob', 'Mark', 'Max']) == 'Alex, Jacob and 2 others like this'