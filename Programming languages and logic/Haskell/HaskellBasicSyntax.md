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

## Function Application
Functions are denoted using juxtaposition
```hs
-- functions having higher precedence that all other operators
f a + b -- means (f a) + b
f a b c -- means ((f a) b) c
```
**Function definition**
```hs
double x = x + x
quadruple x = double (double x)
```
