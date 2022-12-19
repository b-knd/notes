## Standard Prelude (built-in functions)
```hs
-- arithmetic functions: + * - div mod abs
-- comparison functions: > >= == /= <= <
ex1 = 3 * 7
ex2 = mod 10 2 --or 10 `mod` 2
ex3 = 1 - (2 * 3)
ex4 = 5 >= (-5)
```
> _Similar bracketing and precedence rules_

## Layout Rule
Indentations matters!!
> _Sequence of definition must begin in the same column_
```hs
a = 10
b = 20
c = 30
```

Instead of curly brackets to group definitions, haskell uses indentations to implicitly group definitions
```hs
a = b + c
  where
    b = 1
    c = 2
d = a * 2
```

## Function Application
Functions are denoted using juxtaposition
```hs
-- functions having higher precedence that all other operators
f a + b -- means (f a) + b
f a b c -- means ((f a) b) c
```
**Function definition**
```hs
-- naming of functions must begin with lower case letters
double x = x + x
quadruple x = double (double x)
```

## Types and Classes
Some basic types: Bool, Char, String, Int, Integer, Float

```hs
e :: t -- means expression e produces value of type t
```

We can combine basic types to build compound types using type operators
```hs
-- functions as compound types
-- given any types T and U we can form function type T -> U that take value of type T and return value of type U
add :: (Int, Int) -> Int
add (x, y) = x + y
-- functions that return another functions aka curried functions
-- different from add, add' take value one by one whereas add takes in tuple containing both values
add' :: Int -> (Int -> Int)
add' x y = x + y 

```
