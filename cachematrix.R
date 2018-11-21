## The functions below computes and caches the inverse of the matrix


## This function caches and gets the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(u){
                x<<-y
                m<<-NULL
        }
        get<-function() x
        setSolve<-function(solve) m<<-solve
        getSolve<-function() m
        list(set = set, get = get, setSolve = setSolve, getSolve = getSolve)
}


## This function computes the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getSolve()
        if(!is.null(m)){
                return(m)
        }
        data<-x$get()
        m<-solve(data, ...)
        x$setSolve(m)
        m
}
