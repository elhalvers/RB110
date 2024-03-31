def greeting
  puts 'Hello!'
end

number_of_greetings = 2

#number_of_greetings.times do
#  greeting
#end

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end
