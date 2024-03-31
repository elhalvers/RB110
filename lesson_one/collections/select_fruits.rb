produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def find_fruit(hash)
  counter = 0
  fruit_hash = {}
  keys = hash.keys

  loop do
    break if counter == keys.size 

    current_key = keys[counter]
    current_value = hash[current_key]

    if current_value == 'Fruit'
      fruit_hash[current_key] = current_value
    end
    
    counter += 1
  end

  fruit_hash
end

p find_fruit(produce) #== {'apple' => 'Fruit', 'pear' => 'Fruit'} # true
