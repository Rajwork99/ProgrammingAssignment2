# makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
#  it calculates the inverse of the matrices and sets the value of the inverse in the cache via the setmean function.

        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

  # to create a function to check inverse table
  cachemean <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        # this will inverse the matrices if it is not working.
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
 
  
  
  
  