=begin
Problem:
- Given the 'produce' hash, select the key-value pairs where the value is 'Fruit'
Input: hash
Output: hash
Intermediate: Array for the hash keys

Example:
select_fruit(produce) # => {"apple" => "Fruit", "pear" => "Fruit"}

DS:
Input: hash
Output: hash
Intermediate: Array for the hash keys

Algorithm:

High-level:
- Start with an empty hash 'result' variable'
- Iterate over the passed in hash `hash`,
  on each iteration,
    check to see if the value of the current key is a 'Fruit'
    if it is, add the key value pair to the 'result' array
- return the result array

For iteration,
1. initialize a local variable `counter` set to 0
2. Invoke a loop method with a block
3. Inside the block,
     - Break out of the loop if counter equals the length of the keys array
     - Initialize a local variable `keys` as hash.keys
     - Initialize a local variable `current_key` as keys[counter]
     - Initialize a local variable `current_value` as hash[current_key]
     - Create a condition to check if current_value == 'Fruit'
        - if true, add key value to `result` hash
     - Increment the counter
4. Return the `result` hash
=end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  keys = hash.keys
  result = {}
  counter = 0

  loop do
    break if counter == keys.size

    current_key = keys[counter]
    current_value = hash[current_key]

    if current_value == 'Fruit'
      result[current_key] = current_value
    end

    counter += 1
  end

  result
end

p select_fruit(produce) == {"apple" => "Fruit", "pear" => "Fruit"}
