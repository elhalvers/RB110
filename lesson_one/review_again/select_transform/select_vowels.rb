def select_vowels(str)
  vowels = ''
  counter = 0

  loop do
    break if counter == str.size

    current_char = str[counter]
    
    if 'aeiouAEIOU'.include?(current_char)
      vowels << current_char
    end

    counter += 1
  end

  vowels
end

def number_of_vowels(str)
  num_vowels = select_vowels(str).size
  puts "The number of vowels in your string is #{num_vowels}."
end
  

number_of_vowels('the quick brown fox')      # => 5

sentence = 'I wandered lonely as a cloud'
number_of_vowels(sentence)                   # => 10
