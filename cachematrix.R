## Assignment: Caching the Inverse of a Matrix


## Sets variables and returns them to the user

makeCacheMatrix <- function(x = matrix())
     {
          inv <- NULL
          set <- function(y) 
          {
               ## sets the value of 'global' x to be y
               x <<- y
               inv <<- NULL
          }
          get <- function()
          {
               x
          }
          setinverse <- function(inverse) 
          {
               inv <<- inverse
          }
          getinverse <- function() 
          {
               inv
          }
          list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
     }

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     
    #call the getinverse function in makeCacheMatirx
      i <- x$getinverse()
     
     # first time this is called i will be null 
       if(!is.null(i)) 
     {
          message("getting cached data.")
          return(i)
     }
     
      data <- x$get()
     # call to solve to invert the matrix
     i <- solve(data)
     # call to setinverse function in makeCacheMatirx
     x$setinverse(i)
     i
}
