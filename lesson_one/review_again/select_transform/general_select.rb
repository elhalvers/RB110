=begin
Problem:
Create a method that takes in a hash with items as keys and categories as values
Input: hash and string
Output: hash based on selection criteria

Examples:
general_select(produce, 'Fruit')     # => {"apple"=>"Fruit", "pear"=>"Fruit"}
general_select(produce, 'Vegetable') # => {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}
general_select(produce, 'Meat')      # => {}

DS&A




=end

def general_select(produce_list, selection_criteria)
  items = produce_list.keys
  selected_items = {}

  counter = 0

  loop do
    break if counter == items.size
    current_item = items[counter]
    current_value = produce_list[current_item]

    if current_value == selection_criteria
      selected_items[current_item] = current_value
    end

    counter += 1
  end

  selected_items
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p general_select(produce, 'Fruit') #== {"apple"=>"Fruit", "pear"=>"Fruit"}
p general_select(produce, 'Vegetable') #== {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}
p general_select(produce, 'Meat') #== {}
