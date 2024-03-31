# Ruby `#each` method

## Array

```ruby
[1, 2, 3].each do |num|
  puts num
end
```

The code within the block is executed for each iteration. In this case the code within the block is `puts num` which means each element in the array will be output by the `puts` method.

How does the block know what `num` is? For each iteration, `each` sends the value of the current element to the block in the form of an argument. The block parameter is `num` and it represents the value of the current element in the array.

## Hash

Hashes, however, need two arguments in order to represent both the key and the value per iteration. Calling each on a hash looks a little different, since the block has two arguments:

```ruby
hash = { a: 1, b: 2, c: 3 }

hash.each do |key, value|
  puts "The key is #{key} and the value is #{value}"
end
```

We can iterate over an array or hash in a manual way by using loop, or we can iterate more idiomatically using each -- they're equivalent, for the most part. One of the main differences between them, however, is the return value. Once each is done iterating, it returns the original collection.
