books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

=begin
Problem:
Order the array of hashes bases on the year of publication of each book, from earliest to latest

Examples:

DS&A

sort array using a block, for each hash element, if the string value is the same as 
converting the string to integer and back, sort by in year string converted to integer

=end

# p (books.sort_by do |element|
 #   element.map do |key, value|
   #   if value.to_i.to_s == value
     #   value.to_i
  #   end
 #   end
# end
 #   )
p books.sort_by {|book| book[:published]}

