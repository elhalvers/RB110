=begin
Problem:
Given the ages hash, remove people with age 100 and greater

Input: Hash
Output: Self - with people with age 100 and greater removed from the original hash

Algorithm:

=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages

ages.delete_if { |_, age| age >= 100 }

p ages

