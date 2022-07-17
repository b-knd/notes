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

> **Definition** (Identity Matrix). An n x n matrix that contains 1 on diagonal and 0 everywhere else.
>> $$\mathbf{I}_n \coloneqq \begin{bmatrix}1 & 0 & \cdots & 0 & \cdots & 0 \\ 
  0 & 1 & \cdots & 0 & \cdots & 0 \\
  \vdots & \vdots & \ddots & \vdots & \ddots & \vdots \\
  0 & 0 & \cdots & 1 & \cdots & 0 \\
  \vdots & \vdots & \ddots & \vdots & \ddots & \vdots \\
   0 & 0 & \cdots & 0 & \cdots & 1\end{bmatrix} \in \mathbb{R}^{n\times n}$$
   
**Properties of Matrices**
- Associativity: $\forall\mathbf{A}\in\mathbb{R}^{m\times n}, \mathbf{B}\in\mathbb{R}^{n\times p}, \mathbf{C}\in\mathbb{R}^{p\times q}:(\mathbf{A}\mathbf{B})\mathbf{C} = \mathbf{A}(\mathbf{B}\mathbf{C})$
- Distributivity: $\forall\mathbf{A}, \mathbf{B}\in\mathbb{R}^{m\times n}, \mathbf{C}, \mathbf{D}\in\mathbb{R}^{n\times p}:(\mathbf{A}+\mathbf{B})\mathbf{C} = \mathbf{A}\mathbf{C}+\mathbf{B}\mathbf{C}, \mathbf{A}(\mathbf{C}\mathbf{D}) = \mathbf{A}\mathbf{C}+\mathbf{A}\mathbf{D}$
- Multiplication with the identity matrix: $\forall\mathbf{A}\in\mathbb{R}^{m\times n}: \mathbf{I}_m\mathbf{A} = \mathbf{A}\mathbf{I}_n = \mathbf{A}$

### Chapter 2.2.2 Inverse and Transpose
> **Definition** (Inverse). A square matrix $\mathbf{A}\in\mathbb{R}^{n\times n}$. Let matrix $\mathbf{B}\in\mathbb{R}^{n\times n}$ have the property that $\mathbf{A}\mathbf{B} = \mathbf{I}_n = \mathbf{B}\mathbf{A}. \mathbf{B}$ is called the inverse of $\mathbf{A}$ and denoted by $\mathbf{A}^{-1}$.
- Matrix without inverse is known as regular/invertible/nonsingular matrix
- We can use determinant to check if a matrix is invertible, e.g.

  $$\mathbf{A}\coloneqq \begin{bmatrix}a_{11} & a_{12}\\ 
  a_{21} & a_{22}\end{bmatrix} \in \mathbb{R}^{2\times 2}$$ 
  
  has an inverse because its determinant $a_{11}a_{22} - a_{12}a_{21} \neq 0$
- If multiplication between two matrices is an inverse matrix, then the two matrices are said to be the inverse of each other

> **Definition** (Transpose). For $\mathbf{A}\in\mathbb{R}^{m\times n}$ the matrix $\mathbf{B}\in\mathbb{R}^{n\times m}$ with $b_{ij}=a_{ji}$ is called the transpose of $\mathbf{A}$. We write $B = A^\top$ (Tips: just write columns of A as rows to get the transpose of A)

**Properties of inverses and transposes**

$$\mathbf{A}\mathbf{A}^{-1} = \mathbf{I} = \mathbf{A}^{-1}\mathbf{A}$$

$$(\mathbf{A}\mathbf{B})^{-1} = \mathbf{B}^{-1}\mathbf{A}^{-1}$$

$$(\mathbf{A}+\mathbf{B})^{-1} \neq \mathbf{A}^{-1} + \mathbf{B}^{-1}$$

$$(\mathbf{A}^\top)^\top = \mathbf{A}$$

$$(\mathbf{A} +\mathbf{B})^\top = \mathbf{A}^\top + \mathbf{B}^\top$$

$$(\mathbf{A}\mathbf{B})^\top = \mathbf{B}^\top\mathbf{A}^\top$$

> **Definition** (Symmetric Matrix). A matrix $\mathbf{A}\in\mathbb{R}^{n\times n}$ is symmetric if $\mathbf{A} = \mathbf{A}^\top$, only (n, n)-matrices can be symmetric.

- If matrix A is invertible, so does its transpose
- Sum of symmetric matrices is always symmetric but not neccessarily so for their product

### Chapter 2.2.3 Multiplication by a Scalar
- Let $\mathbf{A}\in\mathbb{R}^{m\times n}$ and $\lambda\in\mathbb{R}$. Then $\lambda\mathbf{A} = \mathbf{K}$, $K_{ij} = \lambda a_{ij}$
- Multiplication is associative and distributive
- Transpose of a scalar is the scalar itself

### Chapter 2.2.4 Compact Representations of Systems of Linear Equations
Given system of linear equations
$$2x_1 + 3x_2 + 5x_3 = 1$$
$$4x_1 - 2x_2 - 7x_3 = 8$$
$$9x_1 + 5x_2 - 3x_3 = 2$$

Compact representation

$$\begin{bmatrix}2 & 3 & 5 \\ 
4 & -2 & -7 \\ 
9 & 5 & -3\end{bmatrix} \begin{bmatrix}x_1 \\
x_2 \\
x_3\end{bmatrix} = \begin{bmatrix}1 \\
8 \\ 
2\end{bmatrix}$$


## Chapter 2.3 Solving Systems of Linear Equations
### Chapter 2.3.1 Particular and General Solution
**Overall steps**
1. Find a particular solution to $\mathbf{Ax} = \mathbf{b}.$
2. Find all solutions to $\mathbf{Ax} = \mathbf{0}.$
3. Combine solutions from step 1. and 2. to the general solution

**Example**

$$
\begin{bmatrix}1 & 0 & 8 & -4 \\
0 & 1 & 2 & 12 \end{bmatrix} \begin{bmatrix}x_1 \\
x_2 \\
x_3 \\
x_4 \end{bmatrix} = \begin{bmatrix}42 \\
8 \end{bmatrix}
$$

Our goal is to find scalars $x_1, ...,x_4$ such that $$\sum _{i=1} ^{4} x_1\mathbf{c}_i = \mathbf{b}$$ where $\mathbf{c}_i$ is the ith column of matrix and **b** is the right hand side of the given equation 

The first solution can be found by taking 42 times first column and 8 times second column such that

$$\mathbf{b} = \begin{bmatrix}42 \\
8 \end{bmatrix} = 42 \begin{bmatrix}1 \\
0 \end{bmatrix} + 8 \begin{bmatrix}0 \\
1 \end{bmatrix}
$$

**Particular solution/ special solution:** $\lbrack 42,8,0,0\rbrack^\top$

Particular solution is not the only solution, to capture all possible solution we need to generate $\mathbf{0}$ using columns of matrix.

Taking third column:

$$\mathbf{b} = \begin{bmatrix}8 \\
2 \end{bmatrix} = 8 \begin{bmatrix}1 \\
0 \end{bmatrix} + 2 \begin{bmatrix}0 \\
1 \end{bmatrix}
$$

So $\mathbf{0} = 8c_1 + 2c_1 - c_3 + 0c_4$ and $(x_1,x_2,x_3,x_4) = (8,2,-1,0)$

Taking fourth column:

$$\mathbf{b} = \begin{bmatrix}-4 \\
12 \end{bmatrix} = -4 \begin{bmatrix}1 \\
0 \end{bmatrix} + 12 \begin{bmatrix}0 \\
1 \end{bmatrix}
$$

So $\mathbf{0} = -4c_1 + 12c_1 + 0c_3 - c_4$ and $(x_1,x_2,x_3,x_4) = (-4,12,0,-1)$

**General solution:** 

$$\begin{cases}\begin{rcases}\mathbf{x}\in\mathbb{R}^4:\mathbf{x} = \begin{bmatrix}42 \\
8 \\
0 \\
0 \end{bmatrix} + \lambda _1 \begin{bmatrix}8 \\
2 \\
-1 \\
0 \end{bmatrix} + \lambda _2 \begin{bmatrix}-4 \\
12 \\
0 \\
-1 \end{bmatrix}, \lambda _1,\lambda _2 \in \mathbb{R}\end{rcases}\end{cases}
$$

### Chapter 2.3.2 Elementary Transformations
**Elementary transformations**
- Exchange of two equatons
- Multiplication of an equation with a constant $\lambda\in\mathbb{R}\setminus\lbrace 0\rbrace$
- Addition of two equations (rows)

**Example**
System of equations:

$$\displaylines{-2x_1 + 4x_2-2x_3-x_4+4x_5=-3 \\
4x_1-8x_2+3x_3-3x_4+x_5=2 \\
x_1-2x_2+x_3-x_4+x_5=0 \\
x_1-2x_2-3x_4+4x_5=a}$$

Compact matrix notation $\mathbf{Ax} = \mathbf{b}$

$$\displaylines{
  \left[\begin{array}{rrrrr|r}
    -2 & 4 & -2 & -1 & 4 & -3\\
    4 & -8 & 3 & -3 & 1 & 2 \\
    1 & -2 & 1 & -1 & 1 & 0 \\
    1 & -2 & 0 & -3 & 4 & a
  \end{array}\right] \\
  \\
  \textrm{Swapping row 1 and 3} \\
  \rightsquigarrow \left[\begin{array}{rrrrr|r}
    1 & -2 & 1 & -1 & 1 & 0 \\
    4 & -8 & 3 & -3 & 1 & 2 \\
    -2 & 4 & -2 & -1 & 4 & -3 \\
    1 & -2 & 0 & -3 & 4 & a
  \end{array}\right] \\
  \\
  R_2 \leftarrow R_2-4R_1, R_3 \leftarrow R_3+2R_1, R_4 \leftarrow R_4-R_1 \\
  \rightsquigarrow \left[\begin{array}{rrrrr|r}
    1 & -2 & 1 & -1 & 1 & 0 \\
    0 & 0 & -1 & 1 & -3 & 2 \\
    0 & 0 & 0 & -3 & 6 & -3 \\
    0 & 0 & -1 & -2 & 3 & a
  \end{array}\right] \\
  \\
  R_4 \leftarrow R_4-R_2-R_3 \\
  \rightsquigarrow \left[\begin{array}{rrrrr|r}
    1 & -2 & 1 & -1 & 1 & 0 \\
    0 & 0 & -1 & 1 & -3 & 2 \\
    0 & 0 & 0 & -3 & 6 & -3 \\
    0 & 0 & 0 & 0 & 0 & a+1
  \end{array}\right] \\
  \\
  R_2 \leftarrow -R_2, R_3 \leftarrow R_3 \cdot (-\frac{1}{3}) \\
  \rightsquigarrow \left[\begin{array}{rrrrr|r}
    1 & -2 & 1 & -1 & 1 & 0 \\
    0 & 0 & 1 & -1 & 3 & -2 \\
    0 & 0 & 0 & 1 & -2 & 1 \\
    0 & 0 & 0 & 0 & 0 & a+1
  \end{array}\right] \\
}$$

The matrix is now in row-echelon form (RFF). Changing back to explicit notation:
> **Definition** (Row-Echelon From). All rows contain only zeros are at bottom of matrix and all rows with at least one nonzero element are on top of rows that contain only zeros. For nonzero rows, first nonzero number from left (pivot/leading coefficient) is always strictly to the right of the pivot of row above.

$$\displaylines{x_1 -2x_2+x_3-x_4+x_5=0 \\
x_3-x_4+3x_5=-2 \\
x_4-2x_5=1 \\
0=a+1}$$

Only for $a=-1$ the system has solution. Pivot element (basic variables) are $x_1, x_3, x_4$, free variables are $x_2, x_5$.

**Particular solution**: (coefficient of free variables are set to 0) $\lbrack 2, 0,-1,1,0\rbrack^\top$

Using the same row-echelon form, set b to 0 such that 

$$
 \rightsquigarrow \left[\begin{array}{rrrrr|r}
    1 & -2 & 1 & -1 & 1 & 0 \\
    0 & 0 & 1 & -1 & 3 & 0 \\
    0 & 0 & 0 & 1 & -2 & 0 \\
    0 & 0 & 0 & 0 & 0 & 0
  \end{array}\right]
$$

Then rewrite it in notation form

$$\displaylines{x_1 -2x_2+x_3-x_4+x_5=0 \\
x_3-x_4+3x_5=0 \\
x_4-2x_5=0 \\
\\
x_1=2x_2+x_3+x_4-x_5 \\
x_3=x_4-3x_5 \\
x_4=2x_5 \\
\\
\begin{bmatrix}2x_2+x_3+x_4-x_5 \\
x_2 \\
x_4-3x_5 \\
2x_5 \\
x_5 \end{bmatrix} = x_2 \begin{bmatrix}2 \\
1 \\
0 \\
0 \\
0\end{bmatrix} + x_5 \begin{bmatrix}2 \\
0 \\
-1 \\
2 \\
1\end{bmatrix}
}$$

**General solution** (capturing all possible solution): 

$$\begin{cases}\begin{rcases}\mathbf{x}\in\mathbb{R}^5:\mathbf{x} = \begin{bmatrix}2 \\
0 \\
-1 \\
1 \\
0\end{bmatrix} + \lambda _1 \begin{bmatrix}2 \\
1 \\
0 \\
0 \\
0\end{bmatrix} + \lambda _2 \begin{bmatrix}2 \\
0 \\
-1 \\
2 \\
1\end{bmatrix}, \lambda _1,\lambda _2 \in \mathbb{R}\end{rcases}\end{cases}
$$

> _Remark_ (Reduced row-echelon form). An equation that is in row-echelon form, every pivot is 1 and pivot are the only nonzero entry in its column.
> _Remark_ (Gaussian Elimination). An algorithm that perform elementary transformations to change system of linear equations into reduced row-echolon form.

**Example**

$$
\begin{bmatrix}\mathbf{1} & 3 & 0 & 0 & 3 \\
0 & 0 & \mathbf{1} & 0 & 9 \\
0 & 0 & 0 & \mathbf{1} & -4 \end{bmatrix}
$$

To find a solution of &\mathbf{Ax} = \mathbf{0}$, look at non-pivot columns and try to obtain 0.

Non-pivot column: second and fifth column. Second column is 3 times the first column, to obtain 0, subtract second from three times the first column. Fifth column is 3 times the first column, 9 times the second pivot column and -4 times the third pivot column, then we subtract fifth column to obtain 0.

**Solution:**

$$\begin{cases}\begin{rcases}\mathbf{x}\in\mathbb{R}^5:\mathbf{x} = \lambda _1 \begin{bmatrix}3 \\
-1 \\
0 \\
0 \\
0\end{bmatrix} + \lambda _2 \begin{bmatrix}3 \\
0 \\
9 \\
-4 \\
-1\end{bmatrix}, \lambda _1,\lambda _2 \in \mathbb{R}\end{rcases}\end{cases}
$$
