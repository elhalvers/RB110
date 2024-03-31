=begin
Problem:
Create a hash that expresses the frequency with which each letter occurs in the string:

=end

statement = "The Flinstones Rock"
frequency = {}

statement.each_char do |char|
  if frequency.include?(char)
    frequency[char] += 1
  else
    frequency[char] = 1
  end
end

p frequency



