#Question 1
vec <- c(5,10,15,20,25,30)
a <- max(vec)
print(a)
b <- min(vec)
print(b)


#Question 2
fact <- function(n){
  if(n<0){
    return("Number is Negative")
  }
  ans <- 1
  for (i in 2:n){
    ans <- ans * i
  }
  return(ans)
}
n <- as.integer(readline("Enter the number :"))
print(fact(n))


#Question 3
fibonacci <- function(n){
  if(n>0){
   series <- c(0)
   if(n>2){
     series <- c(0,1)
     for(i in 2:n){
       next_val <- series[i-1] + series[i-2]
       series <- c(series,next_val)
     }
   }
   return(series)
  }
  return("Number is less than zero")
}
n <- as.integer(readline("Enter the number :"))
print(fibonacci(n))


#Question 4
a <- as.integer((readline("Enter First number: ")))
b <- as.integer((readline("Enter Second number: ")))
sign <- as.integer(readline("Enter\n1. Addition\n2. Subtraction\n3. multiplication\n4. Division"))
if (sign==1){
  print(a + b)
}else if (sign==2){
  print(a - b)
}else if (sign==3){
  print(a * b)
}else if (sign==4){
  print(a / b)
}


#Question 5
x <- c(1, 2, 3, 4, 5)
y <- c(10, 7, 5, 2, 1)
plot(x, y)
categories <- c("Category A", "Category B", "Category C", "Category D")
values <- c(25, 40, 15, 20)
pie(values, labels = categories)
barplot(values, names.arg = categories)
