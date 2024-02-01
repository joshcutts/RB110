#day5_one.rb

=begin

The almanac (your puzzle input) lists all of the seeds that need to be planted.
 It also lists what type of soil to use with each kind of seed, what type of 
 fertilizer to use with each kind of soil, what type of water to use with each 
 kind of fertilizer, and so on. Every type of seed, soil, fertilizer and so on 
 is identified with a number, but numbers are reused by each category - 
 that is, soil 123 and fertilizer 123 aren't necessarily related to each other.

seeds | soil | fertilizer | water | light | temp | humidity | location
79    |  81  |    81      |  81   |   74  | 78   |   78     |  82
14
55
13

seed-to-soil map
[destination range start, source range start, range length]
50 98 2  | source range 98, 99 : destination range 50 51 
52 50 48 | source range 50..98 : destination range 52..98

between (source_range..(source_range + range_length))?
  if destination_range_start < source_range_start
    #subtract
    difference = source_range - destination_range
    soil_number = seed_number - difference
  else
    #add
    addition = source_range - destination_range
    soil_number = seed_number + addition
  end
else
  seed_number = seed_number

seed | map
98      50
99      51

PROBLEM:
input: seed numbers, conversion tables (soil, fertilizer, water, light, temp, humidity, location)
output: lowest location # (integer)

EXAMPLE:



DATA STRUCTURE:
[destination range start, source range start, range length]
50 98 2
52 50 48

desitation_range_starts = [50, 52]
source_range_starts = [98, 50]
range_length = [2, 48]

OR

[
  [50, 98, 2]
  [52, 50, 48]
],
[
  [],
  [],
  []
]

ALGORITHM:
- parse the input so the conversion maps are each nested arrays
- parse the input so seeds is an array of nums
- iterate through the seeds
- iterate through the conversion maps, converting the seed # along the way
- push the final number to a location array
- find the minimum of the location array and return it

=end

Dir.chdir("/Users/joshuacutts/Documents/Documents - Joshua’s MacBook Pro/LaunchSchool/advent_of_code/5December")
# maps = File.read('sample_input.txt').split(/\n{2,}/)
maps = File.read('day5_input.txt').split(/\n{2,}/)

seeds = maps.shift
seeds = seeds.split(" ").select { |seed| seed.to_i.to_s == seed}.map(&:to_i)

intermediate_maps = []
maps.each do |map|
  intermediate_maps << map.split(":")[1]
end

next_intermediate_maps = []
intermediate_maps.each {|map| next_intermediate_maps << map.split("\n")[1..-1]}

final_maps = []
next_intermediate_maps.each do |maps| 
  specific_map = []
  maps.each do |map|
    specific_map << map.split(" ").map(&:to_i)
  end
  final_maps << specific_map
end


# soil
converted_soil = []
soil_conversion = final_maps[0]

seeds.each do |seed|
  not_in_range = []
  soil_conversion.each_with_index do |soil, index|
    destination_range_start = soil[0]
    source_range_start = soil[1]
    range_length = soil[2]
    if seed.between?(source_range_start, (source_range_start+range_length-1))
      if destination_range_start < source_range_start
        difference = source_range_start - destination_range_start
        new_num = seed - difference
        converted_soil << new_num
        not_in_range << false
      else
        addition = destination_range_start - source_range_start
        new_num = seed + addition
        converted_soil << new_num
        not_in_range << false
      end
    else
      not_in_range << true
    end
  end
  converted_soil << seed if not_in_range.all?
end


# fertilizer
converted_fertilizer = []
fertilizer_conversion = final_maps[1]

converted_soil.each do |seed|
  not_in_range = []
  fertilizer_conversion.each_with_index do |soil, index|
    destination_range_start = soil[0]
    source_range_start = soil[1]
    range_length = soil[2]
    if seed.between?(source_range_start, (source_range_start+range_length-1))
      if destination_range_start < source_range_start
        difference = source_range_start - destination_range_start
        new_num = seed - difference
        converted_fertilizer << new_num
        not_in_range << false
      else
        addition = destination_range_start - source_range_start
        new_num = seed + addition
        converted_fertilizer << new_num
        not_in_range << false
      end
    else
      not_in_range << true
    end
  end
  converted_fertilizer << seed if not_in_range.all?
end


# water
converted_water = []
water_conversion = final_maps[2]

converted_fertilizer.each do |seed|
  not_in_range = []
  water_conversion.each_with_index do |soil, index|
    destination_range_start = soil[0]
    source_range_start = soil[1]
    range_length = soil[2]
    if seed.between?(source_range_start, (source_range_start+range_length-1))
      if destination_range_start < source_range_start
        difference = source_range_start - destination_range_start
        new_num = seed - difference
        converted_water << new_num
        not_in_range << false
      else
        addition = destination_range_start - source_range_start
        new_num = seed + addition
        converted_water << new_num
        not_in_range << false
      end
    else
      not_in_range << true
    end
  end
  converted_water << seed if not_in_range.all?
end


# light
converted_light = []
light_conversion = final_maps[3]

converted_water.each do |seed|
  not_in_range = []
  light_conversion.each_with_index do |soil, index|
    destination_range_start = soil[0]
    source_range_start = soil[1]
    range_length = soil[2]
    if seed.between?(source_range_start, (source_range_start+range_length-1))
      if destination_range_start < source_range_start
        difference = source_range_start - destination_range_start
        new_num = seed - difference
        converted_light << new_num
        not_in_range << false
      else
        addition = destination_range_start - source_range_start
        new_num = seed + addition
        converted_light << new_num
        not_in_range << false
      end
    else
      not_in_range << true
    end
  end
  converted_light << seed if not_in_range.all?
end


# temp
converted_temp = []
temp_conversion = final_maps[4]

converted_light.each do |seed|
  not_in_range = []
  temp_conversion.each_with_index do |soil, index|
    destination_range_start = soil[0]
    source_range_start = soil[1]
    range_length = soil[2]
    if seed.between?(source_range_start, (source_range_start+range_length-1))
      if destination_range_start < source_range_start
        difference = source_range_start - destination_range_start
        new_num = seed - difference
        converted_temp << new_num
        not_in_range << false
      else
        addition = destination_range_start - source_range_start
        new_num = seed + addition
        converted_temp << new_num
        not_in_range << false
      end
    else
      not_in_range << true
    end
  end
  converted_temp << seed if not_in_range.all?
end


# humidity
converted_humidity = []
humidity_conversion = final_maps[5]

converted_temp.each do |seed|
  not_in_range = []
  humidity_conversion.each_with_index do |soil, index|
    destination_range_start = soil[0]
    source_range_start = soil[1]
    range_length = soil[2]
    if seed.between?(source_range_start, (source_range_start+range_length-1))
      if destination_range_start < source_range_start
        difference = source_range_start - destination_range_start
        new_num = seed - difference
        converted_humidity << new_num
        not_in_range << false
      else
        addition = destination_range_start - source_range_start
        new_num = seed + addition
        converted_humidity << new_num
        not_in_range << false
      end
    else
      not_in_range << true
    end
  end
  converted_humidity << seed if not_in_range.all?
end


# location
converted_location = []
location_conversion = final_maps[6]

converted_humidity.each do |seed|
  not_in_range = []
  location_conversion.each_with_index do |soil, index|
    destination_range_start = soil[0]
    source_range_start = soil[1]
    range_length = soil[2]
    if seed.between?(source_range_start, (source_range_start+range_length-1))
      if destination_range_start < source_range_start
        difference = source_range_start - destination_range_start
        new_num = seed - difference
        converted_location << new_num
        not_in_range << false
      else
        addition = destination_range_start - source_range_start
        new_num = seed + addition
        converted_location << new_num
        not_in_range << false
      end
    else
      not_in_range << true
    end
  end
  converted_location << seed if not_in_range.all?
end

p converted_location.min