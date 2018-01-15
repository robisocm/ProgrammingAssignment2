## Put comments here that give an overall description of what your
## functions do
## coursera: R programming Programming Assignment 2
## Fuction "makeCacheMatrix"
## This function makes a type of matrix object that can cache its inverse.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  m <-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function()x
  setmatrix<-function(solve)m<<-solve
  getmatrix<-function()m
  list (set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
}


## Write a short comment describing this function
##  Fuction "cacheSolve"
## This function computes the inverse of the matrix returned by makeCacheMatrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  inv
}
