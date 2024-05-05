alphabet = 'abcdefghijklmnopqrstuvwxyz'

def find_letter(string, letter)
  selected_letter = ''
  counter = 0

  loop do 
    break if counter == string.size

    current_char = string[counter] 

    if current_char == letter 
      selected_letter << current_char
    end

    counter += 1
  end

  selected_letter
end

p find_letter(alphabet, 'g') 
