# 5.rb

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# p munsters.select {|name, characteristics| characteristics["gender"] == "male"}.values.inject(0) {|sum, (value)| sum += value["age"] }

male_age_sum = 0
munsters.each do |name, characteristics|
  male_age_sum += munsters[name]["age"] if munsters[name]["gender"] == "male"
end
p male_age_sum