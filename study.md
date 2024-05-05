Select

```ruby
[1, 2, 3].select do |num|
  num.odd?
end
```

`select` evaluates the return value of the block. The block returns a value on each iteration, which then gets evaluated by `select`. Similar to a real method, the return value of the block is the return value of the last expression within the block.

When evaluating the block's return value, `select` only cares about its truthiness. Everything in Ruby is considered "truthy" except for nil and false. That's not exactly the same thing as saying everything except nil and false has a value of true in Ruby, but only that it is "truthy". It's a small, but important, distinction.

If the return value of the block is "truthy", then the element during that iteration will be selected. If the return value of the block is "falsy" then the element will not be selected.

What will the return value of `select` be? select performs selection based on the truthiness of the block's return value.  When an element is selected, it's placed in a new collection. The new collection is returned.

Map

Similar to select, `map` also considers the return value of the block. The main difference between these two methods is that `map` uses the return value of the block to perform transformation instead of selection.

```ruby
[1, 2, 3].map do |num|
  num * 2
end
```

In this example, the return value of the block is the product of num and 2. map then takes this value and places it in a new collection. This process is repeated for each element in the original collection. A new collection is returned with the transformed elements.

```ruby
[1, 2, 3].map do |num|
  num.odd?
end
```

The key to remember here is that map always performs transformation based on the return value of the block. In this case, the return value of the block will be a boolean. This means that the collection returned by map will be an array of booleans.


