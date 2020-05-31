## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL                             ## initialize inverse as NULL; will hold value of matrix inverse
    set <- function(y) {                    ## define the set function to assign new
    x <<- y                             ## value of matrix in parent environment
    inverse <<- NULL                        ## if there is a new matrix, reset inverse to NULL
    }
    get <- function() x                     ## define the get fucntion - returns value of the matrix argument

    setinverse <- function(inverse) inverse <<- inverse  ## assigns value of inv in parent environment
    getinverse <- function() inverse                     ## gets the value of inv where called
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  ## you need this in order to refe
                                                                             ## to the functions with the $ operator
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inverse <- x$getinverse()
    if(!is.null(inverse)) {
        message("getting cached data")
        return(inverse)
    }
    data <- x$get()
    inverse <- solve(data, ...)
    x$setinverse(inverse)
    inverse
}
