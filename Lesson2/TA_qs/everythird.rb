def everyThird(array, start)
  everythird_array = []
  loop do
    everythird_array << array[start]
    start += 3
    break if start >= array.length
  end
  everythird_array
end

my_arr = [1, 2, [], 4, 2, 'f', 'g', 'h']
p everyThird(my_arr, 1) 
p everyThird(my_arr, 2)

def everyThird(array, start)
  array = array[start..-1]

  array.select.with_index do |element, index|
    index % 3 == 0
  end
end