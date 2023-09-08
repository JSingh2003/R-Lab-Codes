#Question 1

#a
total <- c(rep("Gold",20),rep("Silver",30),rep("Bronze",50))
sample_space=sample(total,10)
print(sample_space)

#b
sample_space <- sample(c("Success","Failure"),10,replace=T,prob=c(0.9,0.1))
print(sample_space)


#Question 2

#a
n <- 10
prob <- 1
for (i in 1:n) {
  prob <- prob*(1-(i-1)/365)
}
print(1 - prob)

#b
prob2 <- 1
j <- 2
while((1 - prob2) <= 0.5){
  j <- j+1
  prob2 <- prob2 * ((1 - (j - 1) / 365))
}
print(j)


#Question 3
b_given_a <- function(a,b,a_given_b){
  return(b*a_given_b/a)
}
cloudy <- 0.4
rain <- 0.2
cloudy_given_rainy <- 0.85
print(b_given_a(cloudy,rain,cloudy_given_rainy))


#Question 4
data("iris")
print(head(iris))
print(structure(iris))
print(range(iris$Sepal.Length))
print(mean(iris$Sepal.Length))
print(median(iris$Sepal.Length))
print(quantile(iris$Sepal.Length,0.25))
print(quantile(iris$Sepal.Length,0.75))
print(IQR(iris$Sepal.Length))
print(sd(iris$Sepal.Length))
print(var(iris$Sepal.Length))


#Question 5
mode1 <- function(a){
  unique_elements <- unique(a)
  modeval <- unique_elements[which.max(tabulate(match(a,unique_elements)))]
  return(modeval)
}
vec <- c(12,3,3,3,8,18,4,18,)
mode1(vec)
