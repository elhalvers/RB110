=begin
Problem:
Given the `munsters` hash below,
Modify the hash such that each member of the Munster family has an additional "age_group" key 
that has one of three values describing the age group the family member is in
(kid, adult, or senior). Your solution should produce the hash below

Examples:

{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

  Rules: 
   a kid is in the age range 0 - 17, an adult is in the range 18 - 64 
   and a senior is aged 65+.

=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, info|
    if (0..17).include?(info["age"])
      info["age_group"] = "kid"
    elsif  (18..64).include?(info["age"])
      info["age_group"] = "adult"
    else
      info["age_group"] = "senior"
    end
  end

p munsters


