📍Adapted from **Mathematics For Machine Learning** _by Marc Peter Deisenroth, A.Aldo Faisal, Cheng Soon Ong_
# TABLE OF SYMBOLS
| **SYMBOL** | **TYPICAL MEANING** |
|------------|---------------------|
| $$a, b, c, \alpha, \beta, \gamma$$ | Scalars are lowercase |
| $$\mathbf{x}, \mathbf{y}, \mathbf{z}$$| Vectors are bold lowercase |
| $$\mathbf{A}, \mathbf{B},\mathbf{C}$$| Matrices are bold uppercase |
| $$\mathbf{x^T},\mathbf{A^T}$$ | Transpose of a vector or matrix |
| $$\mathbf{A^{-1}}$$ | Inverse of a matrix |
| $$\lt\mathbf{x,y} \gt$$ | Inner product of x and y |
| $$\mathbf{x^Ty}$$ | Dot produt of x and y |
| $$B = (b_1,b_2,b_3)$$ | Ordered tuple |
| $$\mathbf{B} = [b_1,b_2,b_3]$$ | Matrix of column vectors stacked horizontally |
| $$B = {b_1,b_2,b_3}$$ | Set of vectors (unordered) |
| $$\mathbb{Z},\mathbb{N}$$ | Integers and natural numbers, respectively |
| $$\mathbb{R},\mathbb{C}$$ | Real and complex numbers, respectively |
| $$\mathbb{R}^n$$ | n-dimensional vector space of real numbers |
| | |
| $$\forall x$$| Universal quantifier: for all x |
| $$\exists x$$ | Existential quantifier: there exists x |
| $$a := b$$ | a is defined as b |
| $$a =: b$$ | b is defined as a |
| $$a \propto b$$ | a is proportional to b, i.e., $$a = constant \centerdot b$$ |
| $$g \circ f$$ | Function composition: "g after f" |
| $$ \Leftrightarrow$$ | If and only if |
| $$ \Rightarrow $$ | Implies |
| $$a \in A $$ | a is an element of the set A |
| $$\emptyset $$ | Empty set |
| $$D$$ | Number of dimensions; indexed by d = 1,...,D |
| $$N$$ | Number of data points; indexed by n = 1,...N |
|||
| $$\mathbf{I_m}$$ | Identity matrix of size m x m |
| $$\mathbf{0_{m,n}}$$ | Matrix of zeroes of size m x n |
| $$\mathbf{1_{m,n}}$$ | Matrix of ones of size m x n |
| $$e_i$$ | Standard/canonical vector (where i is the component that is 1 |
| $$dim$$ | Dimensionality of vector space |
| $$rk(\mathbf{A})$$ | Rank of matrix A |
| $$Im(\varPhi)$$ | Image of linear mapping Φ  |
| $$ker(\varPhi)$$ | Kernel (null space) of a linear mapping Φ |
| $$span\lbrack b_1\rbrack$$ | Span (generating set) of b_1 |
| $$tr(\mathbf{A})$$ | Trace of A |
| $$det(\mathbf{A})$$ | Determinant of A |
| $$\vert\cdot\vert$$ | Absolute value or determinant (depending on context) | 
| $$\|\cdot\|$$ | Norm; Euclidean unless specified | 
| $$\lambda$$ | Eigenvalue or Lagrange multiplier |
| $$E_\lambda$$ | Eigenspace corresponding to eigenvalue λ |
|||
| $$\varTheta$$ | Parameter vector | 
| $$\frac{\partial f}{\partial x}$$ | Partial derivative of f with respect to x |
| $$\frac{df}{dx}$$ | Total derivative of f with respect to x | 
| $$\nabla$$ | Gradient |
| $$\mathscr{L}$$ | Langrangian |
| $$\mathcal{L}$$ | Negative log-likelihood |
| $$\binom{n}{k}$$ | Binomial coefficient, n choose k |
| $$\mathbb{V_X}\lbrack \mathbf{x}\rbrack$$ | Variance of x with respect to the random variable X |
| $$\mathbb{E_X}\lbrack \mathbf{x}\rbrack$$ | Expectation of x with respect to the random variable X |
| $$Cov_{X,Y}\lbrack \mathbf{x,y}\rbrack$$ | Covariance between x and y |
| $$X ⫫ Y \vert Z$$ | X is conditionally independent of Y given Z |
| $$ X \sim p $$ | Random variable X is distributed according to p |
| $$ N(\mu,\Sigma)$$ | Gaussian distribution with mean μ and Σ |
| $$Ber(\mu)$$ | Bernoulli distribution with parameter μ |
| $$ Bin(N, \mu)$$ | Binomial distribution with parameters N, μ |
| $$Beta(\alpha, \beta)$$ | Beta distribution with parameters α, β |
|||

# TABLE OF ABBRIEVIATIONS AND ACRONYMS
| **ACRONYM** | **MEANING** |
|-------------|-------------|
| e.g. | Exempli gratia (Latim: for example) |
| GMM | Gaussian mixture model |
| i.e. | Id est (Latim: this means) |
| i.i.d. | Independent, identically distributed |
| MAP | Maximum a posteriori | 
| MLE | Maximum likelihood estimation/ estimator |
| ONB | Orthonormal basis | 
| PCA | Principal component analysis | 
| PPCA | Probabilistic principal component analysis |
| REF | Row-echelon form |
| SPD | Symmetric, positive definite |
| SVM | Support vector machine |
|||


