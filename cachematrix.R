## Well, I would not probably know, how to make this excercise without the example provided.
## I have only changed the variable names to "set/getinverse" instead of "set/getmean
## and the "mean" function for "solve" function.
## It works. I have tried the example I found in forum.
## m <- matrix(c(-1, -2, 1, 1), 2,2)
## x <- makeCacheMatrix(m)

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve ##To be honest, I don't understand this line.
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## This is almost the same function as provided in the example.

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
  
}

##Well, and just some info about me. 
##If you would like to, you can write answers to my questions in evaluation:)
##My name is Jan and I come from the Czech republic. You?
##I am student of economics and I am 23 yo. You?
##I am really sorry that I didn't make this function myself, but... 
##I didn't had to and did not know how.
##Have a nice day! Maybe we will meet each other one day!

