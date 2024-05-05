=begin
Problem:
Modify the hash such that each member of the Munster family has an additional 
"age_group" key that has one of three values describing the age group 
the family member is in (kid, adult, or senior). 
Your solution should produce the hash below

Rules:
A kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

Example:
{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

DS:
start and finish: nested hash
intermediate: array of keys and/or values

A:
Mental Model:
iterate over the `munsters` hash,
iterate over the `age` keys,
if age in range (0..17) add new key:value pair for appropriate 'age_group' to existing hash

Iterate over the hash values
for each, if the muster's age is within a given range, append 'age_group' to the values hash
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.values.each do |munster|
  if (0..17).include?(munster['age'])
    munster['age_group'] = 'kid'
  elsif (18..64).include?(munster['age'])
    munster['age_group'] = 'adult'
  else
    munster['age_group'] = 'senior'
  end
end

p munsters




