# RB110 Notes

## Loops

**The basics of looping:**

1. a loop
2. a counter
3. a way to retrieve the current value
4. a way to exit the loop

## Collection Manipulation

Besides iteration, the two most common actions to perform on a collection are *selection* and *transformation*.

*Selection* is picking certain elements out of the collection depending on some criterion.

*Transformation*, on the other hand, refers to manipulating every element in the collection.

If there are n elements in a collection, selection results in n or less elements, while transformation always results in exactly n elements.

Using these two actions, we can do nearly anything you can imagine to a collection. Therefore, it's critical to not only understand how to perform these actions, but to develop a high level of proficiency so you can quickly and fluently work with collections.

Selection and transformation both utilize the basics of looping: a loop, a counter, a way to retrieve the current value, and a way to exit the loop. In addition, selection and transformation require some criteria; selection uses this criteria to determine which elements are selected, while transformation uses this criteria to determine how to perform the transformation.

**When performing transformation, it's always important to pay attention to whether the original collection was mutated or if a new collection was returned.**

## The `for` loop

```ruby
alphabet = 'abcdefghijklmnopqrstuvwxyz'

for char in alphabet.chars
  puts char
end
```

```
for 'element' in 'collection'
 'do something'
end
```
