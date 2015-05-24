> makeCacheMatrix <- function (x = matrix()) {
     inverse<-NULL
      set<-function(changematrix){
          x<<-changematrix
          inverse<<-NULL
      }
      get<-function() x
      setmatrixinverse<-function(solve) inverse <<- solve
      getmatrixinverse<-function() inverse
      list(set = set, get = get, setmatrixinverse = setmatrixinverse, getmatrixinverse = getmatrixinverse)
  }
  
> cacheSolve <- function (x, ...) {
     inverse<-x$getmatrixinverse()
      if(!is.null(inverse)) {
          message("getting cached data")
          return(inverse)
      }
     data<-x$get()
     inverse<-solve(data, ...)
      x$setmean(inverse)
      inverse
  }
  commit
  
  
