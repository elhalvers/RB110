=begin

=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

#p ages.values.min

minimum_age = ages.values.first

ages.values.each do |age|
  if age < minimum_age
    minimum_age = age
  end
end

p minimum_age


