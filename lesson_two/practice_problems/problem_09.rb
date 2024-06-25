arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

=begin
Problem: Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

Question: Does that mean the sub arrays should be ordered in descending order within the outer array only? Should the elements within each subarray also be ordered descending?
Descending( letters > numbers; 'blue' > 'b')

Let's assume we sort both, strings to strings, numbers to numbers

Example:
expect new arr = [['green', 'blue', 'black'], ['c', 'b', 'a'], [3, 2, 1]]

DS&A
- We are returning a new transformed array (Array#map)
- We are sorting the elements within each subarray as well as the subarrays within the outer array.
nested mapping?

So, work inside to out. Map each subarray to a sorted new subarray and then sort the outer array
 - still will have to convert integers to strings for the outer array sort.
=end

new_arr = (arr.map do |sub_arr|
  sub_arr.sort { |a, b| b <=> a }
end)

p new_arr


