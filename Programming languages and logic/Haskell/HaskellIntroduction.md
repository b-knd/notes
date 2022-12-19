## Features
- **Concise programs**: few keywords, indentation for scoping

  > ```hs
  > dummy :: Int -> Int
  > dummy x = x + y
  >   where y = 10
  > ```
- **Powerful type system**: types are inferred by the compiler where possible
- **List comprehensions**: construct lists by selecting and filtering

  > ```hs
  > --even number until 10 [2,4,6,8,10]
  > evenNums = [ 2,4..10 ] 
  > 
  > --number till 10 that are divisible by 3
  > divBy3 = [ n | n <- [1..10], n `mod` 3 == 0 ] 
  > ```
- **Recursive functions**: efficiently implemented, tail recursive
- **Higher-order functions**: powerful abstraction mechanism to reuse code
- **Effectful functions**: allows for side effects such as I/O
- **Generic functions**: polymorphism for reuse of code
- **Lazy Evaluation**: avoid unnecessary computation, infinite data structures
- **Equational reasoning**: pure functions have strong correctness properties

## History
**1930s**: Alonzo Church introduced lambda calculus to demonstrate the undecidability of first-order logic

**1950s**: John McCarthy introduced Lisp (the first functional programming language)

**1960s**: Peter Landin introduced ISWIM (rethinks LISP, remove variables and introduced where clause)

**1970s**: John Backus introduced FP treats functions as first-class entities, promotes higher-order functions

Robin Milner on type inference and polymorphic types in ML (first modern functional programming language)
     
**1980s**: David Turner developed Miranda with lazy evaluation semantics

**1990s**: Haskell 1.0 was released
