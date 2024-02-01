# same_array.rb

=begin

Given two arrays a and b write a function comp(a, b) 
(orcompSame(a, b)) that checks whether the two arrays 
have the "same" elements, with the same multiplicities 
(the multiplicity of a member is the number of times it appears). 
"Same" means, here, that the elements in b are the elements in a 
squared, regardless of the order.

a = [121, 144, 19, 161, 19, 144, 19, 11] 
b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]

PROBLEM:
input - 2 arrays of integers (can also be nils)
output - boolean
true if b array values are equal to square of previous array value of a
false otherwise

EXMAPLES:

a = [121, 144, 19, 161, 19, 144, 19, 11] 
b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]

DATA STRUCTURE:
iterate through array b and compare to previous index in array a

ALGORITHM:
- set equal variable to false
- iterate through array b with index
- compare the current value of element in array b to the square of the value at previous index in array a
  - if the values are equal 
    - set the equal variable to true
  - otherwise
    - set the equal variable to false
- return the equal variable

=end

def comp(array1, array2)
  array1.sort!
  array2.sort!
  equal = []
  array2.each_with_index do |intb, index|
  inta = array1[index]
    if intb == inta ** 2
      equal << true
    else
      equal << false
    end
  end
  equal.all?
end

p comp( [121, 144, 19, 161, 19, 144, 19, 11], 
        [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) == true

p comp( [15, 35, 49, 90, 21, 79, 26, 52], 
[225, 1225, 2401, 8100, 441, 6241, 676, 2704]) == true