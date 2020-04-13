#1

iris
iris$Sepal.Length
mean(iris$Sepal.Length)
x=mean(iris$Sepal.Length)
x
mean(iris$Sepal.Width)
y=mean(iris$Sepal.Width)
y
mean(iris$Petal.Length)
z=mean(iris$Petal.Length)
z
mean(iris$Petal.Width)
w=mean(iris$Petal.Width)
w
list(x,y,z,w)
length(list(x,y,z,w))


list(mean(iris$Sepal.Length),mean(iris$Sepal.Width),mean(iris$Petal.Length),mean(iris$Petal.Width)) 




#2

iris
apply(iris[,1:4],1,mean)



#3

DNA = c("A","G","T","C")
DNA=sample(DNA, size = 1000, rep=T)
DNA=factor(DNA)
summary(DNA)/length(DNA)
dna_at=c(DNA[1],DNA[4]); dna_at 
dna_at



#4
letters
sample(letters,size = 1000, replace = TRUE)
sampleabc = c(sample(letters, size = 1000, replace = TRUE))
summary(sampleabc)
glasnie = sampleabc[sampleabc %in% c("a","e","i","o","u")] 
length(glasnie)


#5

iris
setosa=c(iris$Petal.Length[1:50])
versicolor=c(iris$Petal.Length[51:100])
virginica=c(iris$Petal.Length[101:150])
mean(setosa)
mean(versicolor)
mean(virginica)
species=c(mean(setosa),mean(versicolor),mean(virginica))
f=factor(species)
names(f)<-c("setosa","versicolor", "virginica")
f



#6
median <- function(x) { 
  z=sort(x) 
  if((length(z)%%2)!=0){ 
    result = z[(length(x)/2)+1] } 
  else 
    result = (z[length(x)/2]+z[length(x)/2+1])/2 
  return(result)} 

#primer
median(iris$Petal.Width) 


#7.1
iris
x=iris$Sepal.Length[1:50]
y=iris$Petal.Length[1:50]
plot(x,y,main="setosa", xlab="Sepal.Length",ylab="$Petal.Length", col="red")


#7.2
iris
x=iris$Sepal.Length[51:100]
y=iris$Petal.Length[51:100]
plot(x,y,main="versicolor", xlab="Sepal.Length",ylab="$Petal.Length", col="blue")

#7.3
iris
x=iris$Sepal.Length[101:150]
y=iris$Petal.Length[101:150]
plot(x,y,main="virginica", xlab="Sepal.Length",ylab="$Petal.Length", col="brown")


#8
library("ggplot2")
diamonds
levels(factor(diamonds$clarity))
x=levels(factor(diamonds$clarity))
y=vector()
(diamonds$price>1000)
for (i in 1:length(x)) {y[i]=mean(diamonds$price[(diamonds$price>1000) & diamonds$clarity==x[i]])}

x
y
                
                    