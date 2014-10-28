## Put comments here that give an overall description of what your
## functions do

## This function will set the assigned matrix initially. 


makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  #Setting of matrix happens in this phase of the code. Here X is free variable.
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  ##This code gets matrix
  get <- function() {
    ##Return the Matrix.
    x
  }
  setMat <- function(solve) {
  #Setting the solved matrix in the variable S
  
    s <<- solve
  }
  getMat <- function() {
  ##Returns the solved matrix.
    s
  }
  ##List of the function is listed here. 
  list(set = set, get = get, setMat = setMat, getMat = getMat)
}


## This function is to capture the Solved matrix from makecachematrix function, if that is not found, this function will solve 
## the inverse of the matrix using solve function

cacheSolve <- function(x, ...) {
##Capturing the solved matrix from the Makecachematrix funtion
  s <- x$getMat()
  ## Checking the Cached Status 
  if(!is.null(s)) {
  ##if the Matrix is empty then error msg is printed.
    message("Cached data")
  ##Return 
    return(s)
  }
  ## Matrix is received using the get function. 
  data <- x$get()
  ## Solved inverse matrix is set here.
  s <- solve(data, ...) %*% data
  x$setMat(s)
  s
}
