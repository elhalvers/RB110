hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

=begin
Problem: Using the `each` method, write some code to output all of the vowels from the strings.

Examples:
Expect:
e
u
i
o
o
u
e
o
e
e
a
o


DS&A:
- Create a `vowels` constant of 'aeiou'
- iterate over the hash using key, value. values are arrays of strings,
- iterate over the values, for each element,
 - iterate over each character,
   if the character is in the 'vowels' constant,
   output it to the screen
=end

VOWELS = 'aeiou'
hsh.each do |key, value|
  value.each do |word|
    word.each_char do |char|
      if VOWELS.include?(char)
        puts char
      end
    end
  end
end
