=begin
Problem:
Order the array of number strings by descending numeric value

Examples:
arr = ['10', '11', '9', '7', '8']

Questions: Return a new array? or mutate existing array?

expected result: ['11', '10', '9', '8', '7']

DS&A

mental model:
Assuming we are returning a new array,
Transform the array to a new sorted array
 - To sort 'numerically' we need to convert string to Integer while mapping
 so we want to sort the array using a block and each element of the block should 
 convert the string element to an Integer for sorting

=end

arr = ['10', '11', '9', '7', '8']

new_arr = arr.sort_by { |num| -num.to_i }

p new_arr
p (new_arr == ['11', '10', '9', '8', '7'])

