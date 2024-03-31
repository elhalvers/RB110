# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.
#
# Input: String
# Output: An array of substrings that meet the requirements
#
# Rules:
# - return all the substrings from input string which are palindromes.
# * What about single letters? Based on examples, needs at least two characters
# * Based on examples, "" => []
# - Case sensitive

# Examples / Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []
#
# Data Structures:
# Input: String
# Output: Array
# Intermediate: Array
#
# Algorithm:
# - Initialize a 'result' variable to an empty array.
# - Create an array named 'sub_str_arr' that contains all of the
#   substrings of the input string that are at least 2 chars.
#    - for each starting index from 0 through the next to last index position
#       - for each substring length from 2 until there are no substrings of that length
#          - extract the substring of the indicated length starting at the indicated index position
#         end of inner loop
#      end of outer loop.
#    - 
#   loop through the words in the sub_str_arr.
#     - if the word is a palindrome append to the 'result' array.
#   return the 'result' array


def palindrome_substrings(str)
  return [] if str == ""
  result = []
  
  sub_str_arr = substrings(str)
  sub_str_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result
end

def substrings(str)
  sub_strings = []
  start_idx = 0

  while start_idx <= str.length - 2
    num_chars = 2
    while (num_chars <= str.length - start_idx)
      sub_string = str[start_idx, num_chars]
      sub_strings << sub_string 
      num_chars += 1
    end
    start_idx += 1
  end
  sub_strings
end

def is_palindrome?(str)
  str == str.reverse
end
# Tests

p palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
p palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome") == []
p palindrome_substrings("") == []


