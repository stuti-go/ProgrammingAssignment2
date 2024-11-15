makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  # Setter for the matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL  # Reset the inverse cache when the matrix changes
  }
  
  # Getter for the matrix
  get <- function() x
  
  # Setter for the inverse
  setInverse <- function(inverse) inv <<- inverse
  
  # Getter for the inverse
  getInverse <- function() inv
  
  # Return a list of the functions
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}