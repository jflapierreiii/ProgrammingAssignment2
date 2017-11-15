## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## This funtion inverts the matrix passed as 'x'.

cacheSolve <- function(x, ...) {
  ## Return an inverse matrix of 'x'.
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
  }
