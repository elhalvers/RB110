fruits = %w(apple banana pear)

def pluralize(array)
 transformed_elements = []
 counter = 0

 loop do
    break if counter == array.size

    current_element = array[counter]

    transformed_elements << current_element + 's'

    counter += 1
  end
 transformed_elements
end

p fruits
p pluralize(fruits) 
