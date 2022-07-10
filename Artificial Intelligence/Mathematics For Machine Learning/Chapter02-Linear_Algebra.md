# Chapter 2 Linear Algebra
> **Linear algebra is the study of vectors and certain rules to manipulate vectors**

## Chapter 2.1 Systems of Linear Equations
* For real-valued system of linear equations, there is either no solution, exactly one solution (unique solution) or infinitely many solution (usually having a free variable in solution)
* For system of equations with 2 variables, each equations can be represented as lines on a 2D plane. Solution is the intersection between those lines.
* For system of equations with 3 variables, each equations determines a plane in a 3D space and again, solution is the common intersection between those planes.
* To solve systematically, we collect coefficients into vectors and collect vectors into matrices
  
  Original equation: 
  
  $$
  \displaylines{a_{11}x_1 + \cdots + a_{1n}x_n = b_1 \\
  \vdots\space, \\
  a_{m1}x_1 + \cdots + a_{mn}x_n = b_m}
  $$
  
  Can be converted into: 
  
  $$
  x_1 \begin{bmatrix}a_{11} \\ 
  \vdots \\ 
  a_{m1}\end{bmatrix} + x_2 \begin{bmatrix}a_{12} \\ 
  \vdots \\ 
  a_{m2}\end{bmatrix} + \cdots + x_n \begin{bmatrix}a_{1n} \\ 
  \vdots \\ 
  a_{mn}\end{bmatrix} = \begin{bmatrix}b_1 \\ 
  \vdots \\ 
  b_m\end{bmatrix} \Longleftrightarrow \begin{bmatrix}a_{11} & \cdots & a_{1n} \\ 
  \vdots & \space & \vdots \\ 
  a_{m1} & \cdots & a_{mn}\end{bmatrix} \begin{bmatrix}x_1 \\ 
  \vdots \\ 
  x_n\end{bmatrix} = \begin{bmatrix}b_1 \\ 
  \vdots \\ 
  b_m\end{bmatrix}
  $$

## Chapter 2.2 Matrices
> **Definition** (Matrix). With m, n $\in\mathbb{N}$ a real-valued (m,n) matrix **_A_** is an $m\cdot n$-tuple of elements $a_{ij},i = 1,...,m,j = 1,...,n$, which is ordered according to a rectangular scheme consisting of m rows and n columns:
>>$$\mathbf{A} = \begin{bmatrix}a_{11} & a_{12} & \cdots & a_{1n}\\ 
  a_{21} & a_{22} & \cdots $ a_{2n} \\
  \vdots & \vdots & \space & \vdots \\ 
  a_{m1} & a_{m2} & \cdots & a_{mn}\end{bmatrix}, a_{ij} \in \mathbb{R}.$$

### Chapter 2.2.1 Matrix Addition and Multiplication
**Addition of matrices**

Sum of matrices **_A_** $\in\mathbb{R}^{m\times n}, **_B_** $\in\mathbb{R}^{m\times n}$

$$\mathbf{A} + \mathbf{B} \coloneqq \begin{bmatrix}a_{11}+b_{11} & \cdots & a_{1n}+b_{1n} \\ 
  \vdots & \space & \vdots \\ 
  a_{m1}+b_{m1} & \cdots & a_{mn}+b_{mn}\end{bmatrix} \in \mathbb{R}^{m\times n}$$
  
**Multiplication of matrices**

Multiplication between matrices **_A_** $\in\mathbb{R}^{m\times n}, **_B_** $\in\mathbb{R}^{n\times k}$, **_A_**$\cdot$**_B_** 

$$c_{ij} = \sum_{l=1}^{n} a_{il}b_{lj}, \space\space\space i = 1,...,m, j = 1,...,k.$$

Multiplication is only applicable for matrices with matching dimension, e.g. n x k-matrix **_A_** can be multiplied with a k x m-matrix **_B_**, producing a n x m-matrix **_C_**, but product BA is not defined if m $\neq$ n

> **Definition** (Identity Matrix).


