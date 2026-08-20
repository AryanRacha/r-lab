# Matrix Operations

# 1. Row, Column & Other Operations

# Initialize a matrix
x = matrix(nrow=4, ncol=3, data=c(1:12))
x

# Renaming the row names
rownames(x) = c("r1", "r2", "r3", "r4")
x

# Renaming the column names
colnames(x) = c("c1", "c2", "c3")
x

# Assigning a specified number to all matrix elements
x = matrix(nrow=4, ncol=2, data=2)
x

# Identity Matrix
d = diag(1, nrow=3, ncol=3)
d

# Diagonal Matrix of number 5
d = diag(5, nrow=3, ncol=3)
d

# Transpose of a matrix
x = matrix(nrow=4, ncol=2, data=1:8, byrow=T)
x

# Transpose of a matrix
xt = t(x)
xt

# Finding the row and column sums
x = matrix(nrow=4, ncol=2, data=c(1,2,3,4,5,6,7,8))
x

rowSums(x)
colSums(x)

# Finding the row and column means
x = matrix(nrow=4, ncol=2, data=c(1,2,3,4,5,6,7,8))
x

rowMeans(x)
colMeans(x)


# 2. Accessing Rows, Columns & Submatrices

# Initialize a matrix
x = matrix(nrow=5, ncol=3, byrow=T, data=1:15)
x

# Accessing the third row
x[3,]

# Accessing the second column
x[,2]

# Accessing rows 4 to 5 and columns 2 to 3
x[4:5, 2:3]

# Accessing rows 1 and 4 and columns 1 and 3
x[c(1,4), c(1,3)]


# 3. Addition of a Matrix with a Constant

# Initialize a matrix
x = matrix(nrow=4, ncol=2, data=1:8, byrow=T)
x

# Add 5 to every element
x + 5


# 4. Subtraction of a Matrix with a Constant

# Initialize a matrix
x = matrix(nrow=4, ncol=2, data=1:8, byrow=T)
x

# Subtract 5 from every element
x - 5


# 5. Multiplication of a Matrix with a Constant

# Initialize a matrix
x = matrix(nrow=4, ncol=2, data=1:8, byrow=T)
x

# Multiply every element by 5
5*x


# 6. Division of a Matrix with a Constant

# Initialize a matrix
x = matrix(nrow=4, ncol=2, data=1:8, byrow=T)
x

# Divide every element by 2
x/2


# 7. Addition and Subtraction of Matrices

# Matrices should have the same dimensions

x = matrix(nrow=4, ncol=2, data=1:8, byrow=T)
y = matrix(nrow=4, ncol=2, data=11:18, byrow=T)

x
y

# Addition of two matrices
x + y

# Subtraction of two matrices
x - y


# 8. Mathematical Operations on Matrices

# Initialize a matrix
x = matrix(nrow=4, ncol=2, data=1:8, byrow=T)
x

# Multiply matrix by 4
4*x

# Add x and 4*x
x + 4*x

# Subtract x from 4*x
4*x - x


# 9. Multiplication of Matrices

# Matrix multiplication is performed using %*%

x = matrix(nrow=4, ncol=2, data=1:8, byrow=T)
y = matrix(nrow=2, ncol=4, data=11:18, byrow=T)

x
y

# Matrix multiplication
x%*%y

# Matrix multiplication in reverse order
y%*%x


# 10. Multiplication of X' and X

# Initialize a matrix
x = matrix(nrow=4, ncol=2, data=1:8, byrow=T)
x

# Transpose of x
t(x)

# X'X
t(x) %*% x

# XX'
x %*% t(x)


# 11. Cross Product of a Matrix

# Initialize a matrix
x = matrix(nrow=4, ncol=2, data=1:8, byrow=T)
x

# Transpose of x
t(x)

# Cross product X'X
crossprod(x)


# 12. Concatenating Matrices Row Wise

# rbind() concatenates matrices row wise

x = matrix(nrow=3, ncol=2, data=1:6, byrow=T)
y = matrix(nrow=3, ncol=2, data=11:16, byrow=T)

x
y

# Concatenate row wise
rbind(x, y)


# 13. Concatenating Matrices Column Wise

# cbind() concatenates matrices column wise

x = matrix(nrow=3, ncol=2, data=1:6, byrow=T)
y = matrix(nrow=3, ncol=2, data=11:16, byrow=T)

x
y

# Concatenate column wise
cbind(x, y)


# 14. Inverse of a Matrix

# Create a matrix
y = matrix(
  nrow=2,
  ncol=2,
  byrow=T,
  data=c(84,100,100,120)
)

y

# Find the inverse
solve(y)


# 15. Eigen Values and Eigen Vectors

# Create a matrix
y = matrix(
  nrow=2,
  ncol=2,
  byrow=T,
  data=c(84,100,100,120)
)

y

# Find eigen values and eigen vectors
eigen(y)


# Logical Operators

# 16. Relational and Logical Operators

# Greater than
8 > 7

# Greater than or equal to
7 >= 7

# Less than
7 < 5

# Less than or equal to
8 <= 8

# Exactly equal to
7 == 7

# Not equal to
8 != 9

# Logical NOT
x = TRUE
!x


# 17. Logical OR using ||

# Scalar value
x = 8
(x < 10) || (x < 2)

# Another scalar value
x = 18
(x < 10) || (x < 2)


# 18. Difference Between | and ||

# Create a vector
x = c(8,18)

# || operates only on the first element
(x < 10) || (x < 2)

# | operates element-wise on all elements
(x < 10) | (x < 2)


# 19. Logical AND using &&

# Scalar value
x = 5
(x < 10) && (x > 2)

# Another scalar value
x = 15
(x < 10) && (x > 2)


# 20. Difference Between & and &&

# Create a vector
x = c(8,18)

# && operates only on the first element
(x < 10) && (x > 2)

# & operates element-wise on all elements
(x < 10) & (x > 2)


# 21. Finding Values Using Logical AND

# Generate x = 1,2,3,4,5,6
x = 1:6

# Check which values are greater than 2 and less than 5
(x > 2) & (x < 5)

# Extract values greater than 2 and less than 5
x[(x > 2) & (x < 5)]


# 22. Finding Values Using Logical OR

# Generate x = 1,2,3,4,5,6
x = 1:6

# Check which values are greater than 2 or less than 5
(x > 2) | (x < 5)

# Extract values greater than 2 or less than 5
x[(x > 2) | (x < 5)]


# 23. Understanding && with a Vector

# Generate x = 1,2,3,4,5,6
x = 1:6

# && examines only the first element
(x > 2) && (x < 5)

# Equivalent operation using the first element
(x[1] > 2) & (x[1] < 5)


# 24. Standard Logical Operations

# Assign TRUE and FALSE
x = TRUE
y = FALSE

# AND
x & y

# OR
x | y

# Negation
!x


# 25. Checking Whether a Value is Logical

# Assign a value
x = 5

# Logical comparison
Logical1 = (x > 2)
Logical1

# Check whether Logical1 is logical
is.logical(Logical1)

# Another logical comparison
Logical2 = (x < 10)
Logical2

# Check whether Logical2 is logical
is.logical(Logical2)

# Another logical comparison
Logical3 = (x != 5)
Logical3

# Check whether Logical3 is logical
is.logical(Logical3)


# 26. More Logical Comparisons

# Assign a value
x = 5

# Logical comparison
Logical4 = (2*x > 11)
Logical4

# Check whether Logical4 is logical
is.logical(Logical4)

# Logical comparison
Logical5 = (3*x < 20)
Logical5

# Check whether Logical5 is logical
is.logical(Logical5)


# 27. Relational Operators

# Greater than
8 > 7

# Less than
7 < 5

# Greater than
7 > 7

# Greater than or equal to
7 >= 7

# Less than
8 < 8

# Less than or equal to
8 <= 8


# 28. Equality and Inequality Operators

# Not equal
8 != 9

# Not equal
9 != 9

# Equal
7 == 7

# Equal
7 == 8


# 29. Logical NOT

# Assign TRUE
x = TRUE

# Negation
!x


# 30. Comparing Vectors

# Create two vectors
x = c(1, 2, 3)
y = c(4, 5, 6)

# Compare x and y using greater than
x > y

# Compare x and y using less than
x < y

# Compare x and y using not equal to
x != y

# Compare x and y using equal to
x == y


# 31. isTRUE() Function

# Check whether 8 is less than 6
isTRUE(8 < 6)

# Check whether 8 is greater than 6
isTRUE(8 > 6)


# 32. isFALSE() Function

# Check whether 5 is less than 8
isFALSE(5 < 8)

# Check whether 5 is greater than 8
isFALSE(5 > 8)