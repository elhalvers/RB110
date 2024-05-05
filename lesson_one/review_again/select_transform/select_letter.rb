=begin
Problem:
Let's write a method called select_letter, that takes a string and 
returns a new string containing only the letter that we specified.
We want it to behave like this:

Input: two strings, a main string and a selection character
Output: one string

Examples:
question = 'How many times does a particular character appear in this sentence?'
select_letter(question, 'a') # => "aaaaaaaa"
select_letter(question, 't') # => "ttttt"
select_letter(question, 'z') # => ""

DS&A:
Mental Model:
Start with an empty string, `result`
Iterate over the primary string, 'words', for each character
 - if character is equal to the selection character,
     append it to the empty `result` string
Return `result`
=end

def select_letter(string, selected_char)
  result = ''
  counter = 0

  loop do
    break if counter == string.size

    current_char = string[counter]

    if current_char == selected_char
      result << current_char
    end

    counter += 1
  end

  result
end

question = 'How many times does a particular character appear in this sentence?'
p select_letter(question, 'a') == "aaaaaaaa"
p select_letter(question, 't') == "ttttt"
p select_letter(question, 'z') == ""

p select_letter(question, 'a').size # => 8
p select_letter(question, 't').size # => 5
p select_letter(question, 'z').size # => 0
