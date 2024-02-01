=begin


Return: a string formatted as a list of names separated by commas except for the last two names, 
which should be separated by an ampersand.


list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

list([ {name: 'Bart'} ])
# returns 'Bart'

list([])
# returns ''

PROBLEM:
input: array of hashes with string names as values
output: formatted string separated by , and & when appropriate
comma sep with >= 3 elements plus & between last 2 elements
ampersand between 2 elements


EXAMPLES:
p list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]) == 'Bart, Lisa, Maggie, Homer & Marge'
p list([{name: 'Bart'},{name: 'Lisa'}]) == 'Bart & Lisa'
p list([{name: 'Bart'}]) == 'Bart'

DATA STRUCTURE:
array of names

ALGORITHM:
- make a new array blank that will hold names
- iterate through the array of hashes and add name strings to empty array
- if array length is 0 return empty array
- if array length is 1 return element
- if array length is 2 return elements separated by &
- if array length is >=3 comma separate all elements except last element and add last element separated by &



=end

def list(arr)
  names = []
  arr.each do |hash|
    names << hash[:name]
  end
  if names.length == 0
    ""
  elsif names.length == 1
    names[0]
  elsif names.length == 2
    "#{names[0]} & #{names[1]}"
  elsif names.length >= 3
    "#{names[0..-2].join(', ')} & #{names[-1]}"
  end
end

p list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]) == 'Bart, Lisa, Maggie, Homer & Marge'
p list([{name: 'Bart'},{name: 'Lisa'}]) == 'Bart & Lisa'
p list([{name: 'Bart'}]) == 'Bart'