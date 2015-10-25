## Put comments here that give an overall description of what your
## functions do

## The aim of this assignment was to create a function that obtains the inverse of an invertible matrix that has already been calculated and cached in order to save heavy computational time. The following two function do just that, where makeCacheMartrix stores the inverse in the cache and the cacheSolve function solves the inverse by first checking if it has already been solved and cached before. 


## Write a short comment describing this function

## Here, the makeCacheMatrix gets the inverse from the given set matrix, x, and caches it into memory.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }

  get <- function() x
  setmatrix <- function(solve) m <<- solve
  getmatrix <- function() m
  list( set=set, get=get,
        setmatrix = setmatrix,
        getmatrix = getmatrix)
}


## Write a short comment describing this function
## This function solves the inverse of the matrix x. It first looks to see if it has already been solved in the cache. If not, it solves the inverse using the solve() function and sets the inverse matrix using the setmatrix function.

cacheSolve <- function(x=matrix(), ...) {
  m <- x$getmatrix()
  if(!is.null(m)) {
    message ("getting cached data")
    return(m)
  }
  matrix <- x$get()
  m <- solve(matrix, ...)
  x$setmatrix(m)
  m
}
  
        ## Return a matrix that is the inverse of 'x'

