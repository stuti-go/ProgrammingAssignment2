# Create a square invertible matrix
test_matrix <- matrix(c(2, 1, 1, 4), nrow = 2, ncol = 2)

# Create a special "matrix" object
special_matrix <- makeCacheMatrix(test_matrix)

# Compute and cache the inverse
inverse_1 <- cacheSolve(special_matrix)
print(inverse_1)

# Retrieve the cached inverse
inverse_2 <- cacheSolve(special_matrix)
print(inverse_2)

# Modify the matrix and recompute the inverse
special_matrix$set(matrix(c(5, 2, 2, 3), nrow = 2, ncol = 2))
inverse_3 <- cacheSolve(special_matrix)
print(inverse_3)