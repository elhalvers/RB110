arr1 = [1, [2, 3], 4]

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

hsh1 = {first: [1, 2, [3]]}

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

# For each of these collection objects where the value `3` occurs, demonstrate how you would change this to a `4`.

# In place? or return a new array with the 3 transformed into a 4?

p arr1
arr1[1][1] = 4
p arr1

p arr2
arr2[2] = 4
p arr2

p hsh1
hsh1[:first][2][0] = 4
p hsh1

p hsh2
hsh2[['a']][:a][2] = 4
p hsh2

