# CHAPTER ONE: INTRODUCTION

## 1.1 What’s the Book About?

💡 **Concept**: A working program is not enough, running time is our main concern when data set grows larger

**📌 Goal:**

- Estimate running time for large inputs
- Compare running times without writing codes
- Improve program speed
- Determine program bottlenecks

## **1.2 Mathematics Review**

**💬 Section summary/description:** Basic formulas and proof techniques

### 1.2.1 Exponents

![equation](https://latex.codecogs.com/svg.image?X^AX^B=X^{A&plus;B})

![equation](https://latex.codecogs.com/svg.image?\frac{X^A}{X^B}=X^{A-B})

![equation](https://latex.codecogs.com/svg.image?(X^A)^B=X^{AB})

![equation](https://latex.codecogs.com/svg.image?X^N&plus;X^N=2X^N\neq&space;X^{2N})

![equation](https://latex.codecogs.com/svg.image?2^N&plus;2^N=2^{N&plus;1})


### 1.2.2 Logarithms

> In computer science, default logarithms are base 2 unless stated otherwise
> 

**Definition**

![equation](https://latex.codecogs.com/svg.image?X^A=B&space;\leftrightarrow&space;log_XB=A)

**Theorem**

![equation](https://latex.codecogs.com/svg.image?log_AB=\frac{log_CB}{log_CA};&space;\space&space;A,&space;B,C>0,\space&space;A\neq1\newline)

![equation](https://latex.codecogs.com/svg.image?logAB=logA&plus;logB\newline)

![equation](https://latex.codecogs.com/svg.image?logA/B=logA-logB\newline)

![equation](https://latex.codecogs.com/svg.image?log(A^B)=B\space&space;logA\newline)

![equation](https://latex.codecogs.com/svg.image?\forall&space;X>0,&space;\space\space&space;logX<X&space;\newline)



### 1.2.3 Series

![equation](https://latex.codecogs.com/svg.image?\newline\sum_{i=0}^{N}&space;2^{i}&space;=&space;2^{N&plus;1}-1\newline\sum_{i=0}^{N}&space;A^{i}&space;=&space;\frac{A^{N&plus;1}-1}{A-1}\newline\sum_{i=0}^{N}&space;A^{i}&space;\leq&space;\frac{1}{1-A}&space;\space\space&space;if\space&space;0<A<1\newline\sum_{i=1}^{N}&space;i&space;=&space;\frac{N(N&plus;1)}{2}\approx\frac{N^2}{2},&space;\sum_{i=1}^{N}&space;i^2&space;=&space;\frac{N(N&plus;1)(2N&plus;1)}{6}\approx\frac{N^3}{3}&space;\newline\newline\downarrow\newline\newline&space;\sum_{i=1}^{N}&space;i^k&space;\approx&space;\frac{N^k}{k&plus;1}\space\space\space&space;k\neq1\newline\sum_{i=1}^{N}&space;f(N)&space;=&space;Nf(n)\newline\sum_{i=n_0}^{N}&space;f(i)&space;=&space;\sum_{i=1}^{N}&space;f(i)&space;-&space;\sum_{i=1}^{n_0-1}&space;f(i)\newline)


## 1.3 A Brief Introduction to Recursion

⭐️ **Recursive function:** Function that is defined in terms of itself

⭐️ **Base Case:** Function can be solved without using recursion

Note: Recursive call must always be to a cause that makes progress towards base case (to avoid non-terminating recursion)
