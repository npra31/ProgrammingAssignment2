## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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
## This function firstly sets the value of the matrix x and then calculates it from the stated x matrix. 
## It then sets the value of the inverse of x and then calculates the value of it. 

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

