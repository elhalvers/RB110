arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

=begin
Problem: Given the following data structure use a combination of methods, 
including either the select or reject method, to return a new array, 
identical in structure to the original but containing only the integers 
that are multiples of 3.

Example:
[[], [3, 12], [9], [15]]

DS&A:
Can use element % 3 to test if the element is a multiple of 3

- Nested array so will have to use a nested iteration
- select elements that are multiples of 3

=end

p (arr.map do |sub_arr|
  sub_arr.select { |num| num % 3 == 0 }
end)


