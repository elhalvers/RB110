=begin
problem: 
Write a method that takes an input string of words and returns a new string with all
the words capitalized

=end

words = "the flintstones rock"

def titleize(words)
  words_arr = words.split.map { |word| word[0].upcase + word[1..-1] } #capitalize

  words_arr.join(' ')
end

p titleize(words)
p titleize(words) == "The Flintstones Rock"
