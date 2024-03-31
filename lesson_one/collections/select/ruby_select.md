# Ruby `#select` Method

```ruby
[1, 2, 3].select do |num|
  num.odd?
end
```

To perform selection, select evaluates the return value of the block. The block returns a value on each iteration, which then gets evaluated by select. Similar to a real method, the return value of the block is the return value of the last expression within the block.

When evaluating the block's return value, select only cares about its truthiness. Everything in Ruby is considered "truthy" except for nil and false. That's not exactly the same thing as saying everything except nil and false has a value of true in Ruby, but only that it is "truthy". It's a small, but important, distinction.

If the return value of the block is "truthy", then the element during that iteration will be selected. If the return value of the block is "falsy" then the element will not be selected.

Once select is done iterating, it returns a new collection containing all of the selected elements
