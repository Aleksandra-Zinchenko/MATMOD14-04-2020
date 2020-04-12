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
abc=c(letters)
abc=c(sample(letters,10000,replace = T))
summary(abc)
aei = abc[abc %in% c("A","E","I","O","U")]
length(aei)
