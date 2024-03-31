def select_vowels(str)
  vowels = ''
  counter = 0

  loop do
    current_char = str[counter]

    if 'aeiouAEIOU'.include?(current_char)
      vowels << current_char
    end

    counter += 1
    break if counter == str.size
  end

  vowels
end

p select_vowels('Launch School') == 'auoo' # => true
