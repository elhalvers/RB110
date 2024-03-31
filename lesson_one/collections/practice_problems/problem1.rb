=begin
Problem:
Given the array below, Turn this array into a hash where the names are keys
and the values are the positiions in the array.
- Input: Array
- Output: Hash
- Rules, Questions, Assumptions:
  - assuming we are returning a new hash object.

Algorithm:
Initialize a local variable, `flinstones_hash` to an empty hash.
Iterate over the elements in the array and for each element
  add the element to the empty hash as a key and it's index as a value.
If defining a method, return the `flinstones_hash`
=end

flinstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

def convert_to_hash(array)
  flinstones_hash = {}

  array.each_with_index { |name, position| flinstones_hash[name] = position }

  flinstones_hash
end


p convert_to_hash(flinstones)


