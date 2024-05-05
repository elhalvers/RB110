=begin
Problem:
We want to mutate a string according to a code.
In this code, given the command `"9a"`, 
we should change the character at index 9 of the string to `"a"`.
Write a method that takes a string and a list of these commands, 
and mutates the string accordingly.

Input: 1 string, 1 array of one or more strings
output: string

Rules:
- spaces are included in indexing input string with spaces.
* mutating method will mutate the input string.
? empty string or empty array accepted for inputs?

DS & Algorithm:
Mental model:
- iterate over `code` array, for each str element, `el`
  - str[el[0]] = el[1]



=end

def encode!(str, code)
  code.each do |el|
    index = el[0].to_i
    value = el[1]
    next if index >= str.size
    str[index] = value
  end
end

test_1 = "dog"
encode!(test_1, ["0f"])
p test_1 == "fog"

test_2 = "parrot"
encode!(test_2, ["0m", "3m", "8m"])
p test_2 == "marmot"

test_3 = "weimaraner"
encode!(test_3, ["0p", "2t", "3p", "6t"])
p test_3 == "petpartner"

test_4 = "incorrect long strung"
encode!(test_4, ["0a", "1 ", "18i"])
test_4 == "a correct long string"
