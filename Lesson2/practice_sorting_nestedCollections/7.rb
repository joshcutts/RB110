
a = 2
b = [5, 8]
arr = [a, b]

a += 2
arr[0] += 2
arr[1][0] -= a

p a # 4
p b # [1, 8]
p arr # [4, [1, 8]]

=begin

The value of `a` didn't change because we are not referencing `a` at any point. The code
`arr[0]` += 2 was modifying the array `arr` not `a`. In effect we are assigning a new
object at that index of the array so that instead of arr[0] containing `a` it now contains
`4` - we can check this by looking at the value of `arr`.

The value of `b` did change because `b` is an array and we are modifying that
array by assigning a new value at index `0` of that array.

=end

hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot', 'fruit' => 'pear' }

p hsh.key('pear')