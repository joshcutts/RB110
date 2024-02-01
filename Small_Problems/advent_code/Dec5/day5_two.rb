# day5_two.rb

Dir.chdir("/Users/joshuacutts/Documents/Documents - Joshua’s MacBook Pro/LaunchSchool/advent_of_code/5December")
# maps = File.read('sample_input.txt').split(/\n{2,}/)
maps = File.read('day5_input.txt').split(/\n{2,}/)

seeds = maps.shift
seeds = seeds.split(" ").select { |seed| seed.to_i.to_s == seed}.map(&:to_i)

new_seeds = []
# seeds = [79, 14, 55, 13]
# seeds = %w(3169137700 271717609 3522125441 23376095 1233948799 811833837 280549587 703867355 166086528 44766996 2326968141 69162222 2698492851 14603069 2755327667 348999531 2600461189 92332846 1054656969 169099767)
# p seeds.length
# seeds = seeds.map(&:to_i)
p seeds


start = 0
loop do
  new_seeds << (seeds[start]..seeds[start]+seeds[start+1]).to_a
  p seeds[start]+seeds[start+1]
  start += 2
  break if start >= seeds.length
end

new_seeds=new_seeds.flatten

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

p "soil"
# soil
converted_soil = []
soil_conversion = final_maps[0]

new_seeds.each do |seed|
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

p "fertilizer"
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

p "water"
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

p "light"
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

p "temp"
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

p "humidity"
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

p "location"
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




