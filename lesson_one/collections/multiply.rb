def multiply(num_array, multiplier)
  counter = 0
  new_array = []

  loop do
    break if counter == num_array.size

    current_number = num_array[counter]
    new_array << current_number * multiplier

    counter += 1
  end

  new_array
end

my_numbers = [1, 4, 3, 7, 2, 6]

p multiply(my_numbers, 3) == [3, 12, 9, 21, 6, 18]

p my_numbers
p multiply(my_numbers, 3)
