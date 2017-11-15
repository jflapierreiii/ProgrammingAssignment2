## Two functions are defined: makeCacheMatrix & cacheSolve.

## makeCacheMatrix takes a matrix 'x' as input and caches it.
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
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
