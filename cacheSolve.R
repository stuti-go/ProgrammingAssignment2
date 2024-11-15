cacheSolve <- function(x, ...) {
  # Check if the inverse is already cached
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
  # Compute the inverse if not cached
  mat <- x$get()
  inv <- solve(mat, ...)  # Compute the inverse using solve()
  x$setInverse(inv)  # Cache the inverse
  inv
}