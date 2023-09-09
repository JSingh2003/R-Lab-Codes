#Question 1
x<-c(0,1,2,3,4)
px<-c(0.41,0.37,0.16,0.05,0.01)
print(sum(px))
ev1<-weighted.mean(x,px)
print(ev1)
ev2=sum(x*px)/sum(px)
print(ev2)
print(c(x%*%px))



#Question 2
f<- function(t){
  return(t*0.1*exp(-0.1*t))
}
f2<-function(t){
  return(t*t*0.1*exp(-0.1*t))
}
ev3<-integrate(f,0,Inf)
variance=integrate(f2,0,Inf)$value-ev3$value**2
print(variance)



#Question 3
x <- c(0,1,2,3)
px <- c(0.1,0.2,0.2,0.5)
z=sum(z=x*px)
y=10*z-12
print(y)




#Question 4
f3<-function(x){
  return(x*0.5*exp(-abs(x)))
}
f4<-function(x){
  return(x*x*0.5*exp(-abs(x)))
}
m2<-integrate(f4,1,10)
print(m2)
m1<-integrate(f3,1,10)
print(m1)
var1<-m2$value-m1$value**2
print(var1)
