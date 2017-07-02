makeCacheMatrix <- function(data=numeric(),nrow=0, ncol=0){
  #to create a matrix with define data
  x1 <- matrix(data,nrow,ncol)
  # to create a table with inverse matrix
  data.matrix(solve(x1)) -> Table.data
 
  View(Table.data) 
}

  # to create a function to check inverse table
  cacheSolve <- function(matrix=x1) {
    m <- Table.data
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    x1 <- matrix(data,nrow,ncol)
    solve(x1) -> Table
    View(Table)
  }
 
  
  
  
  