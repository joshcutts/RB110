# nexus.rb

=begin


PROBLEM:
input: hash
output:rank, (key) with minimum difference between key and value

EXAMPLES:
users = {1 => 3, 3 => 3, 5 => 1}
p nexus(users) ==  3

users = {1 => 10, 2 => 6, 3 => 4, 5 => 1}
p nexus(users) ==  3

DATA STRUCTURE:
{rank => difference}



ALGORITHM:
- initialize a rank at 0
- initialize a min difference at 1000
- iterate through the users hash
  - calculate the difference between rank & honor
  - if difference is less than difference
  - replace rank & difference
- return rank


=end

# def nexus(users)
#   rank = []
#   min_diff = 10000
#   users.each do |r, h|
#     diff = (h-r).abs
#     if diff <= min_diff
#       rank << r
#       min_diff = diff
#     end
#   end
#   rank
# end


def nexus(users)
  diff_hash = users.map do |rank, honor|
    [rank, (rank-honor).abs]
  end.to_h
  min = diff_hash.to_h.values.min
  diff_hash.select {|k, v| v == min}.keys.min
end


users = {1 => 3, 3 => 3, 5 => 1}
p nexus(users) #==  3

users = {1 => 10, 2 => 6, 3 => 4, 5 => 1}
p nexus(users) #==  3