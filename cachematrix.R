## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() {
    x
  }
  setMat <- function(solve) {
    s <<- solve
  }
  getMat <- function() {
    s
  }
  list(set = set, get = get, setMat = setMat, getMat = getMat)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  s <- x$getMat()
  if(!is.null(s)) {
    message("Cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setMat(s)
  s
}
