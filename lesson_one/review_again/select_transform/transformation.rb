fruits = %w(apple banana pear)
transformed_elements = []
counter = 0

loop do
  break if counter == fruits.size

  current_element = fruits[counter]

  transformed_elements << current_element + 's'

  counter += 1
end

p fruits
p transformed_elements
