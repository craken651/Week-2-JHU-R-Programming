## VIDEO 1
# 2nd way of assinging value of y
if(x>3) {
  y<-10
} else {
  y<-0
}
print(y)

# 2nd way of assinging value of y
y<- if(x>3) {
  10
} else {
  0
}

print(y)

## VIDEO 2
#for loop
for(i in 1:10){
  print(i)
}

x <- c("a", "b", "c", "d")
for(i in 1:4){
  print(x[i])
}

for(i in seq_along(x)){
  print(x[i])
}

for(letter in x){
  print(letter)
}

for(i in 1:4) print(x[i])


# nested for loops (nesting beyond 2-3 levels can be very difficult to read/understand)
x<- matrix(1:6, 2, 3)

for(i in seq_len(nrow(x))){
  for (j in seq_len(ncol(x))) {
    print(x[i, j])
    }
}


## VIDEO 3
# while loop
# They begin by testing a condition. If true, then hey execute the loop body.
# Once the loop body is executed, the condition is tested again, and so forth 
# **!!while loops can potentially result in infinite loops if not written properly!!**
 count <- 0
 while(count < 10) {
   print(count)
   count<- count +1
 }
 print(count)
 
 # there can be more than one condition in the test 
 z <- 5 
 
 while( z >= 3 && z <= 10) {
   print(z)
   coin <- rbinom(1, 1, 0.5)
   
   if(coin == 1) { ## random walk
     z <- z + 1
   } else {
       z <- z-1 
     }
 }

 
 ## VIDEO 4
 # Reoeat loop 
 # repeat inititates an infinite loop: These are not commonly used in 
 # statistical applications but the do have their uses. 
 # The only way to exit a repeat loop is to call break 

 x0 <- 1
 tol <- le-8
 # le-8 should = 10^-8
 
 repeat {
   xl <- computeEstimate()
   # computeEstimate() is not a real function
   
   if(abs(x1-x0) < tol){
     break
   } else {
     x0 <-x1
   }
 }
  
 # there is no guarantee that this loop will stop and report whether convergence was achieved.
 
 #Next and return  loop 
 for(i in 1:100) {
   if(i <= 20) {
     #skipp the first 20 iteration
     next()
   }
   ## do something here
   print(i)
 }
 # retrun signals that a function should exit and return a given value
 
 
 
 ## VIDEO 5
 # Repeat, Break, Next
 
 
search()


## VIDEO 9
# Lexical Scoping
make.power <- function(n) {
  pow <- function(x) {
    x^n
  }
  pow
}

cube <- make.power(3)
square <- make.power(2)

cube(3)

square(3)

ls(environment(cube))
get("n", environment(cube))

ls(environment(square))
get("n", environment(square))

# lexical vs dynamic scoping
y <- 10
f <- function(x) {
  y <- 2
  y^2 + g(x)
}

g <- function(x) {
  x*y
}

f(3)

## LAST VIDEO
# Dates and Times in R

x <- as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1970-01-02"))
unclass(as.Date("2070-11-22"))

# times can be coerced froma character strung using the as.POSIXlt or as.POSIXct function
x <- Sys.time()
x

p <- as.POSIXlt(x)
names(unclass(p))

p$sec

# POSIXct format:
x <- Sys.time()
x
unclass(x)
x$sec
p <- as.POSIXlt(x)
names(unclass(p))
p$sec

## Function strpt
datestring <- c("February 28, 2021 14:25", "December 9, 2011 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")
x

 
 
 
 
 
 
 
 
 
 
 
 
