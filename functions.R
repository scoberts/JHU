
add3 <- function(x,y,z){
  
  x+y+z}


above10 <- function(x, n){
  wtf <- x>n
  x[wtf]
  
}

##Or specify a deafult for n
above <- function(x, n=10){
  wtf <- x>n
  x[wtf]
  
}

columnMean <- function(y){
  
  numcol <- ncol(y)
  means <- numeric(numcol)
  for(i in 1:numcol){
    
    means[i]<- mean(y[,i])
    
  }
  means
  
}

##Lexical Scoping
make.power <- function(n){
  
  pow <- function(x){
    x^n
  }
  pow
}

cube(3)

x <- 5
y <- if(x < 3) {
  NA
} else {
  10
}

f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}

x <- 1:10
if(x > 5) {
  x <- 0
}

x <- 5
y <- if(x < 3) {
  NA
} else {
  10
}
