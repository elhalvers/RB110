=begin
PROBLEM:
Given a string, write a method change_me which returns the same
string but with all the words in it that are palindromes uppercased.

# input: string
# output: string (not the same object)
# rules:
#      Explicit requirements:
#        - every palindrome in the string must be converted to
#          uppercase. (Reminder: a palindrome is a word that reads
#          the same forwards and backward).
#        - Palindromes are case sensitive ("Dad" is not a palindrome, but "dad" is.)

#      Implicit requirements:
#        - the returned string shouldn't be the same string object.
#        - if the string is an empty string, the result should be an empty
#          string

Examples:

change_me("We will meet at noon") == "We will meet at NOON"
change_me("No palindromes here") == "No palindromes here"
change_me("") == ""
change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"

Data Structures:
- Input: String
- Intermediate: Array
- Output: String

Algorithm:
- Convert input string to an array
- Iterate over each `word` in array
   - For each word check if palindrome
     If palindrome, use a mutating upcase method on the word
- convert array back to string and return


=end

def change_me(str)
  words_arr = str.split
  words_arr.each do |word|
    if word == word.reverse
      word.upcase!
    end
  end
  words_arr.join(' ')
end

# Tests

p change_me("We will meet at noon") == "We will meet at NOON"
p change_me("No palindromes here") == "No palindromes here"
p change_me("") == ""
p change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"
