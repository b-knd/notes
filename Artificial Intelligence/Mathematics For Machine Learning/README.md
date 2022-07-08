# Mathematics For Machine Learning 
📚 Book by **A. Aldo Faisal**, **Cheng Soon Ong**, and **Marc Peter Deisenroth**

💡**Aim**: _Provide mathematical background to build foundations for readers to dive into other       machine learning textbooks at ease_

![](maths_for_ml.jpg)
***

**Part I Mathematical Foundations**

0. [Table of Symbols & Table of Abbreviations and Acronyms](tableOfSymbols.md)
1. [Introduction and Motivation](#chapter-1-introduction-and-motivation)
2. [Linear Algebra](#chapter-2-linear-algebra)
3. [Analytic Geometry](#chapter-3-analytic-geometry)
4. [Matrix Decomposition](#chapter-4-matrix-decomposition)
5. [Vector Calculus](#chapter-5-vector-calculus)
6. [Probability and Distribution](#chapter-6-probability-and-distribution)
7. [Continuous Optimization](#chapter-7-continuous-optimization)

**Part II Central Machine Learning Problem**

8. [When Models Meet Data](#chapter-8-when-models-meet-data)
9. [Linear Regression](#chapter-9-linear-regression)
10. [Dimensionality Reduction with Principal Component Analysis](#chapter-10-dimensionality-reduction-with-principal-component-analysis)
11. [Density Estimation with Gaussian Mixture Models](#chapter-11-density-estimation-with-gaussian-mixture-models)
12. [Classification with Support Vector Machines](#chapter-12-classification-with-support-vector-machines)

***
## Chapter 1 Introduction and Motivation
**Three concepts of machine learning:**
- Data
  - Core of machine learning
  - Provides valuable patterns
- Model
  - Describes functions that map inputs to outputs
  - Learn from data that improves its performances
  - Good model generalise well to yet unseen data
- Learning
  - Find patterns and structures in data
### Chapter 1.1 Funding Words for Intuitions
**Ambiguity in Machine Learning**
> The word **algorithm** can mean a system that makes predictions based on inputted data (predictors) or a system that adapt parameters of predictor to perform well on future unseen input data (training)

**Main concepts covered**
- Data is represented as vector
- Appropriate model is being chosen (probabilistic or optimization view)
- Learning is carried out from available data through numerical optimization methods (Model should also works well on unseen data)

## Chapter 2 Linear Algebra
> **Linear algebra is the study of vectors and certain rules to manipulate vectors**

### Chapter 2.1 Systems of Linear Equations
* For real-valued system of linear equations, there is either no solution, exactly one solution (unique solution) or infinitely many solution (usually having a free variable in solution)
* For system of equations with 2 variables, each equations can be represented as lines on a 2D plane. Solution is the intersection between those lines.
* For system of equations with 3 variables, each equations determines a plane in a 3D space and again, solution is the common intersection between those planes.
* To solve systematically, we collect coefficients into vectors and collect vectors into matrices
  
  Original equation: 
  
  $$
  \displaylines{a_11x_1 + \cdots + a_{1n}x_n = b_1 \\
  \vdots\space, \\
  a_m1x_1 + \cdots + a_{mn}x_n = b_m}
  $$
  
  Can be converted into: 
  
  $$
  x_1 \begin{bmatrix}a_11 \\ 
  \vdots \\ 
  a_m1\end{bmatrix} + x_2 \begin{bmatrix}a_12 \\ 
  \vdots \\ 
  a_m2\end{bmatrix} + \cdots + x_n \begin{bmatrix}a_1n \\ 
  \vdots \\ 
  a_mn\end{bmatrix} = \begin{bmatrix}b_1 \\ 
  \vdots \\ 
  b_m\end{bmatrix} \Longleftrightarrow \begin{bmatrix}a_11 & \cdots & a_1n \\ 
  \vdots & \space & \vdots \\ 
  a_m1 & \cdots & a_mn\end{bmatrix} \begin{bmatrix}x_1 \\ 
  \vdots \\ 
  x_n\end{bmatrix} = \begin{bmatrix}b_1 \\ 
  \vdots \\ 
  b_m\end{bmatrix}
  $$

### Chapter 2.2 Matrices

## Chapter 3 Analytic Geometry
## Chapter 4 Matrix Decomposition
## Chapter 5 Vector Calculus
## Chapter 6 Probability and Distribution
## Chapter 7 Continuous Optimization
## Chapter 8 When Models Meet Data
## Chapter 9 Linear Regression
## Chapter 10 Dimensionality Reduction with Principal Component Analysis
## Chapter 11 Density Estimation with Gaussian Mixture Models
## Chapter 12 Classification with Support Vector Machines
