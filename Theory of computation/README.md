# Theory of Computation
- **Automata theory**
  - [Finite state automata, regular expressions and regular languages](#finite-state-automata-regular-expressions-and-regular-languages)
  - The pumping lemma for regular languages
  - Closure properties of regular languages
  - Context-free grammars and pushdown automata
  - Closure properties of context-free languages
  - The pumping lemma for context-free languages

- **Computability theory**
  - Turing machines, recursively enumerable and recursive languages
  - Church-Turing theses
  - Limitations of algorithms: universality, the halting problem and undecidablity

- **Computational complexity theory**
  - Complexity of algorithms and of problems
  - Complexity classes P, NP, PSPACE
  - Polynomial-time reduction
  - NP-Completeness and Cook's theorem
  - PSPACE-Completeness

## Finite State Automata, Regular Expressions and Regular Languages
### Finite State Automata
> Finite automata are machines which accept or reject string


### Regular Expressions
- **alphabet Σ:** any finite set of symbols ``(eg. {0,1}, {a,b,c}``
- **string s**: over Σ is a finite sequence of symbols in Σ ``(eg. an example of s over Σ = {0,1} is 0100101)``
- **length #:** number of symbols it contains ``(eg. #(0100) = 4)``
- **empty string ε:** is a string s where #(s) = 0

**Properties of string**
- Two strings s, t over Σ are equal when they have the same symbols in same order (same sequence)
- Set of all string over Σ is denoted as Σ*
- All string is either in the form ε or xσ where σ ∈ Σ
- Length is a function #: Σ* -> N which can be define recursively</br>
  ``#(ε) = 0, #(xσ) = #(x) + 1``
- Concatenation of two strings s, t ∈ Σ* is denoted as st</br>
  eg. s = abb, t = ba then st = abbba
- All s satisfies property εs = εs = s
- String containing n copies of a is denoted as a^n, recursive definition: </br>
  a^0 = ε, a^(n+1) = (a^n)a

### Regular Languages