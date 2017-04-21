## Put comments here that give an overall description of what your
## functions do

# Paso 1. Cambiar numeric a matrix.
# Esto permite incoporar los datos tipo Matrix para obtener su inversa

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL }
get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)      }

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m))   {
                message("getting cached data")
                return(m) }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m                     }
