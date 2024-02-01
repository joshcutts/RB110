munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# total_male_age = 0

# munsters.each do |name, characteristics|
#   total_male_age += characteristics["age"] if characteristics["gender"] == "male"
# end

# p total_male_age

# total_male_age = munsters.inject(0) do |total_age, (name, characteristics)|
#   total_age += characteristics["age"] if characteristics["gender"] == "male"
#   total_age
# end

# p total_male_age

total_male_age = 0

munsters.values.each do |characteristics|
  if characteristics["gender"] == "male"
    total_male_age += characteristics["age"]
  end
end

p total_male_age