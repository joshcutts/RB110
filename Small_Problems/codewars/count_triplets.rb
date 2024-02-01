# count_triplets

def count_triplets(arr)
  triplet_subarrays = []
  (0..arr.length-3).each do |start_index|
    triplet_subarrays << arr[start_index, 3]
  end
  triplet_subarrays.length
end

p count_triplets([1, 2, 3, 4]) == 2
p count_triplets([1, 2, 3, 4, 5, 6]) == 9