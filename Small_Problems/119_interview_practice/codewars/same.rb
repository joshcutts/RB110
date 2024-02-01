# same.rb

=begin

Given two arrays a and b write a function comp(a, b) (orcompSame(a, b)) that checks 
whether the two arrays have the "same" elements, with the same multiplicities 
(the multiplicity of a member is the number of times it appears). "Same" means, here, 
that the elements in b are the elements in a squared, regardless of the order.

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]

comp(a, b) returns true because in b 121 is the square of 11, 14641 is the square 
of 121, 20736 the square of 144, 361 the square of 19, 25921 the square of 161, and so on. 
It gets obvious if we write b's elements in terms of squares:

a = [121, 144, 19, 161, 19, 144, 19, 11] 
b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]

Invalid arrays
If, for example, we change the first number to something else, comp is not returning true anymore:

comp(a,b) returns false because in b 132 is not the square of any number of a.

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]

comp(a,b) returns false because in b 36100 is not the square of any number of a.

If a or b are nil (or null or None, depending on the language), the problem doesn't make sense so return false.


PROBLEM:
input: 2 arrays a and b
output: boolean
true if a ** 2 elements are equal to b

EXAMPLES
p comp([121, 144, 19, 161, 19, 144, 19, 11], [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) == true


DATA STRUCTURE:


ALGORITHM:
- square the elements in a and save to new array and sort
- test if squared a is equal to b sorted


=end

def comp(a, b)
  a.map {|x| x ** 2}.sort == b.sort
end


p comp([121, 144, 19, 161, 19, 144, 19, 11], [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) == true