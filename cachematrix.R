##makeCacheMatrix: Creating the matrix for which we will find inverse
##set:assigning new values of matrix
##get: returning matrix
##setinverse:assigning inverse 
##getinverse:returns inverse
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
invs<- NULL 

set <- function(y) {                  ## set function to assign new value of matrix
  x <<- y                             ## Here x will taking the new value
  invs <<- NULL                       ## in presence of a new matrix, reset invs to NULL
}
get <- function() x                    ## get function for returning value of the matrix argument

setinverse <- function(inverse) invs <<- inverse  ## assigns value of inv in parent environment

getinverse <- function() invs                     ## gets the value of inv where called

list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  ## to refer to the functions with the $ operator

}

## cacheSolve:creates a special "matrix" object that can cache its inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invs <- x$getinverse()
  if(!is.null(invs)) {
  message("getting cached data")
    return(invs)
  }
  data <- x$get()
  invs <- solve(data)
  x$setinverse(inv)
  invs
}
