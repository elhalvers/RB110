=begin
Problem:
let's create a method called multiply that can take 
two arguments, an array and a multiplier and return a new array
with each new element the product of the original element times the multiplier input

Input:
1 array, 1 integer
Output:
a new array, same size as input array with correct transformations.

Example:
my_numbers = [1, 4, 3, 7, 2, 6]
multiply(my_numbers, 3) => [3, 12, 9, 21, 6, 18]

DS&A:
High level:
creat an empty `result` array.
iterate over the input array, for each element
 - append the value of multiplying the element by the multiplier to `result`
return result

=end

def multiply(array, multiplier)
  result = []
  counter = 0
  
  loop do
    break if counter == array.size
    current_value = array[counter]
    result << (current_value * multiplier)

    counter += 1
  end

  result
end

def multiply_map(array, multiplier)
  array.map { |num| num * multiplier }
end

my_numbers = [1, 4, 3, 7, 2, 6]

p multiply(my_numbers, 3) == [3, 12, 9, 21, 6, 18] # => true
p multiply_map(my_numbers, 3) == [3, 12, 9, 21, 6, 18] # => true

