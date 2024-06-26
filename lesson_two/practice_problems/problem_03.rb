arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

arr3 = [['abc'], ['def'], {third: ['ghi']}]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

# Problem: For each of these arrays, how do you reference the character, 'g'?


puts "Here is the 'g' for arr1: '#{arr1[2][1][3]}'"
puts "Here is the 'g' for arr2: '#{arr2[1][:third][0]}'"
puts "Here is the 'g' for arr3: '#{arr3[2][:third][0][0]}'"
puts "Here is the 'g' for hsh1: '#{hsh1['b'][1]}'"
puts "Here is the 'g' for hsh2: '#{hsh2[:third].keys[0]}'"
