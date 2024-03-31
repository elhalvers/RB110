# Ruby's `#map` Method

Similar to select, map also considers the return value of the block. The main difference between these two methods is that map uses the return value of the block to perform transformation instead of selection.

  ```ruby
  [1, 2, 3].map do |num|
    num * 2
end
```

In this example, the return value of the block is the product of num and 2. map then takes this value and places it in a **new collection**. This process is repeated for each element in the original collection.
