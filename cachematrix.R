## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL                             ## initialize inverse as NULL; will hold value of matrix inverse
    set <- function(y) {                   
    x <<- y                             
    inverse <<- NULL                        ## if there is a new matrix, reset inverse to NULL
    }
    get <- function() x                     ## define the get fucntion - returns value of the matrix argument

    setinverse <- function(inverse) inv <<- inverse  
    getinverse <- function() inv                     
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  ## you need this in order to refer
                                                                             ## to the functions with the $ operator
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inverse <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inverse <- solve(data, ...)
    x$setinverse(inv)
    inverse
}
