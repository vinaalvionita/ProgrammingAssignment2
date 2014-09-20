## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = numeric()) {
  cache <- NULL
  setMatrix <- function(newValue) {
      x <<- newValue
      cache <<- NULL
      }
  getMatrix <- function() {
  x
  }
  cacheInverse <- function(solve) {
  cache <<- solve
  }
  getInverse <- function() {
  cache
  }
  list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
  }
  
## cacheSolve
##This function computes the inverse of the special "matrix" returned by makeCacheMatrix above
##If the inverse has already been calculated (and the matrix has not changed),
##then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(y, ...) {
  inverse <- y$getInverse()
  if(!is.null(inverse)) {
  message("getting cached data")
  return(inverse)
  }
  data <- y$getMatrix()
  inverse <- solve(data)
  y$cacheInverse(inverse)
  inverse
  }
        ## Return a matrix that is the inverse of 'x'
