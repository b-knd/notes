[List](#list)

## List
Not a rule but by convention list arguments are usually named with a suffix s (eg. xs, ys)
### Built-in functions
```shell
# Selecting first element of list:
> head [1,2,3,4,5]
1

# Removing first element of a list:
> tail [1,2,3,4,5]
[2,3,4,5]

# Length of a list
> length [1,2,3,4,5]
5

# Selecting nth element of a list
> [1,2,3,4,5] !! 1
2

# Selecting first n elements of a list
> take 3 [1,2,3,4,5]
[1,2,3]

# Removing first n elements from a list
> drop 3 [1,2,3,4,5]
[4,5]

# Appending two list
> [1,2,3] ++ [4,5]
[1,2,3,4,5]

# Calculating sum of elements of a list
> sum [1,2,3]
6

# Calculating product of elements of a list
> product [1,2,3]
6

# Reversing a list
> reverse [1,2,3,4,5]
[5,4,3,2,1]

# Creating infinite list of identical elements
> repeat 1
[1,1,1,.........]

# Replicate an element to form list
> replicate 3 1
[1,1,1]
```
