## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
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

## cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
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
matrix(c(1,2,12,13), nrow = 2, ncol = 2)
     [,1] [,2]
[1,]    1   12
[2,]    2   13
a <- makeCacheMatrix( matrix(c(1,2,12,13), nrow = 2, ncol = 2) )
summary(a)
             Length Class  Mode    
setMatrix    1      -none- function
getMatrix    1      -none- function
cacheInverse 1      -none- function
getInverse   1      -none- function
a$getMatrix()
     [,1] [,2]
[1,]    1   12
[2,]    2   13
cacheSolve(a)
           [,1]        [,2]
[1,] -1.1818182  1.09090909
[2,]  0.1818182 -0.09090909
cacheSolve(a)
getting cached data
           [,1]        [,2]
[1,] -1.1818182  1.09090909
[2,]  0.1818182 -0.09090909
