munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

=begin
Problem: Determine the total age of just the male members of the family.
Example: Expected answer is `444`

DS & A:
 - create a `total` local variable,
 - Iterate over the the munster family 
    - and for each family member,
      if there 'gender' is male, add the value of their 'age' to the total
- return the total
=end

total = 0

munsters.each do |munster, info|
  if info["gender"] == 'male'
    total += info['age']
  end
end

puts total
puts (total == 444)





