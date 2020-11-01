## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL # Initiating the inverse 
  set <- function(y){
    x <<- y
    inv <<-NULL
  }
  get <- function() {x} #function matrix (x)
  setInverse <- function(inverse){inv <<-inverse}
  getInverse <- function(){inv}
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)#function to obtain inverse of matrix
} 



## Write a short comment describing this function

cacheSolve <- function(x,...){## gets cache data
  inv <- x$getInverse()## Return a matrix that is the inverse of 'x'
  if(!is.null(inv)){  #checking whether inverse is null
    message("getting cached data")
    return(inv)#return inverse value
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}

