=begin
Problem:
Create a hash that expresses the frequency with which each letter occurs in this string.

Input: String
Intermediate: Array?
Output: Hash

Rules:
* From the problem example, it looks like spaces are not counted.

Example:
{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

DS:
Input: String
Intermediate: Array?
Output: Hash

Algorithm:

Mental Model:
Create an empty hash, `result`
split string into an array of words to easily eliminate the spaces in the string
back to a string with no spaces
Iterate over the string
Check to see if each character is already in the hash, if so, value += 1, 
if not, add the char as key and value as 1
teturn `result` hash
=end

statement = "The Flintstones Rock"

def frequency(string)
  chars_hash = {}
  string.split.join.each_char do |char|
    if chars_hash[char]
      chars_hash[char] += 1
    else
      chars_hash[char] = 1
    end
  end

  chars_hash
end

p frequency(statement)

p 
