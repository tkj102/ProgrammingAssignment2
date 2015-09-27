## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix caluclates the inverse of a matrix and saves in cache which can be used for further calculation of the 
## same matrix

makeCacheMatrix <- function(x = matrix()) {
        inv_matrix <<- NULL
## sets the a matrix for which inverse is stored
        setmatrix <- function(y) {
        sav_matrix <<- y
        inv_matrix <<- NULL
        }
## retreive the matrix stored whose inverse is already calucalted
        getmatrix <- function() { 
        sav_matrix }
## sets the inverse of the matrix stored         
        setinverse <- function(sav_matrix) {
        inv_matrix <<- solve(sav_matrix)
        }
        getinverse <- function(sav_matrix) {
        inv_matrix
        }
## create a list which stores all the values         
        list( setmatrix = setmatrix(x), getmatrix = getmatrix(), setinverse = setinverse(sav_matrix), 
              getinverse = getinverse() )
        
}


## cacheSolve functions returns the inverse of a matrix. If the inverse is already calculated then it returns from cache
## Returns    : inverse of the matrix stored in the argument 1
## Argument 1 :  x would be list similiar to one made by makeVector function
cacheSolve <- function(x, ...) {

   
        inverse <- x$getinverse
             ## Return a matrix that is the inverse of 'x' if found in cache
        if ( !is.null(inverse)){
        return(inverse)
        }
# get the matrix stored in argumnet x        
        matrix <- x$getmatrix
# set the inverse of the matrix         
        inverse <- x$setinverse(matrix)
# return the inverse of the matrix
        inverse
}
