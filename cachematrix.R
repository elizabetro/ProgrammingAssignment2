
##These functions can use for inverse the matrix.These two functions can cache the inverse of a matrix.
##This function creates a special matrix that can cache its inverse.
##set the value, get the value of the matrix


makeCacheMatrix <- function(x = matrix()) {
a <- NULL
  set <- function(y){
  x <<- y
  a <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) a <<- inverse
  getInverse <- function() a 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}

##This function computes the inverse of the matrix created with aforementioned function (makeCacheMatrix).
## Need first check if the inverse has already been calculated if so it can get the inverse from the cache and can skip the computation.
##Otherwise would be required to compute the inverse of the matrix and set the value of the inversion.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        a <- x$getInverse()
  if(!is.null(j)){
  message("getting cached data")
  return(a)
  }
  mat <- x$get()
  a <- solve(mat,...)
  x$setInverse(a)
  a
}
