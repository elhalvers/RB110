say_hello = true
counter = 0 

while say_hello
  puts 'Hello!'
  counter += 1
  say_hello = false if counter == 5
end
puts counter
puts say_hello
