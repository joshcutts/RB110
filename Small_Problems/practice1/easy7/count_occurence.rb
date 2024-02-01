=begin

Write a method that counts the number of occurrences of each element in a given array.





PROBLEM:
input: array of strings
output: count of each occurence of the string formatted kind of like keys/values on separate lines

EXAMPLES:
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

Expected Output:
car => 4
truck => 3
SUV => 1
motorcycle => 2

DATA STRUTURE:
hash for the counts

ALGORITHM:
- create an empty hash to hold the final result
- increment the count of the string 
- print out the result for each key-value pair


=end

# def count_occurrences(vehicles)
#   vehicles.tally.each {|k, v| puts "#{k} => #{v}"}
# end

def count_occurrences(vehicles)
  counts = Hash.new(0)
  vehicles.each do |vehicle|
    counts[vehicle] += 1
  end
  counts.each { |k, v| puts "#{k} => #{v}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)