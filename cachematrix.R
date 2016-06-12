## Put comments here that give an overall description of what your
## functions do
## The makeCacheMatrix has a list of functions that set and get the value of the matrix and the inverse of the matrix. The cacheSolve function


## Write a short comment describing this function
## The makeCacheMatrix has a list of 4 functions: 1. set the value of the matrix; 2. get the value of the matrix; 3. set the inverse of the matrix; 4. get the inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
	    m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinma <- function(inma) m <<- inma
  getinma <- function() m
  list(set = set, get = get, setinma = setinma,
       getinma = getinma)
}


## Write a short comment describing this function 
## this function first test if the inverse of the matrix already exist. if true, return to that matrix inversion. Then, if not, calculate the inverse of the matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 m <- x$getinma()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinma(m)
  m
  }
  
cacheSolve(makeCacheMatrix(matrix(1:4,2,2)))
