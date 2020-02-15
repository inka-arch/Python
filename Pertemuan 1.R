#Introduction to R
5+3-2
(6+18)/6
2**3
2^3
2^(2*3)
x=3;x
y=4;y
z=x+y;z

#If Statement
#Simple If
x=1
if(x==2){print ("x=2")}
x

#if-else
x=1
if(x>=0){x="A"}else {x="B"}
x

#Looping Statement (for)
for (i in 1:5) {print (i)}
for (i in letters[1:4]) {print (i)}
for (i in LETTERS[3:7]) {print (i)}
a=numeric(20) #generate empty a of length 20
for (i in 1:20) {a[i]=1} #fill a with 1:20
a

#Vector in R
a=1:3
b=2:4
c(a,b)
c(1,a)
array(1,3)
seq(1,5)
seq(from=1, to=3, length.out=4) #desired length of the sequence
AA=letters[1:3] ;AA
K=c(3,2,1,3,2)
length(K)
K[2]
K[1:3]
K[-1]

#Matrix in R
matriks.1=matrix(c(1,2,3,4,5,6),nrow=2,ncol=3) ;matriks.1
matriks.2=matrix(c(1:6,nrow=2,ncol=3)) ;matriks.2
data=c(6.4,8.8,7.5,5.3,7.6,9.5) ;data
matriks.a=matrix(data,nrow=3,ncol=2) ;matriks.a
dim(matriks.1)
dim(matriks.a)

#Operator matrix in R
a=1:5 ;a
a*a
crossprod(a)
b=matrix(c(1:4),2) ;b
b*b
b%*%b
solve(b)
c=c(3,5) ;c
d=cbind(b,c) ;d
e=rbind(b,c) ;e

#Example of vector and data frame
land=factor(c("Belgium","Denmark","France","GB","Ireland","Italy","Luxemburg","Holland","Portugal","Spain","USA","Japan","Deutschland"))
x=c(2.8,1.2,2.1,1.6,1.5,4.6,3.6,2.1,6.5,4.6,3,1.3,4.2);
y=c(9.4,10.4,10.8,10.5,18.4,11.1,2.6,8.8,5,21.5,6.7,2.5,5.6);
data1=data.frame(land,x,y)
colnames(data1)=c("Countries","Index","Unemp")
Income=c(12,10,13,9,8,10,11,12,13.5,14,10,11,13);
datanew=cbind(data1,Income) ;datanew
subset(datanew,Income<13)
subset(datanew$Index,datanew$Unemp>10)

data=read.csv("E:/Kuliah/Komputasi Statistika/DMC/titanicdata.csv", sep=";")
View(data)

#PieChart
library(ggplot2)
class=table(data$Survived)
classdata=data.frame(class)
colnames(classdata)=c("class","Count")
bp= ggplot(classdata, aes(x="", y=Count,fill=class))+geom_bar(width = 1, stat = "identity")
Pie=bp+ coord_polar("y", start=0)
Pie

#Histogram
#using Titanic Dataset in R
library(ggpubr)
ggplot(data = data, mapping = aes(x=data$Age, fill = data$Sex),palette = c("#00AFBB", "#E7B800")) +geom_histogram(binwidth = 5)

#BarChart
ggplot(data,aes(x=factor(Pclass),fill=factor(Sex)))+ geom_bar(position="dodge")+facet_grid(". ~ Survived")
barchart <-ggplot(data_titanic, aes(Pclass, fill=Survived))+geom_bar()barchart+xlab("Passenger Class")+ylab("Number of Passengers")+ ggtitle("Survival by Passenger Class and Gender")+ scale_fill_discrete(name = "", labels c("Died", "Survived"))

#Boxplot
ggplot(data = data, mapping aes(x = data$Sex, y = data$Age)) + geom_boxplot() + xlab("Sex") + ylab("Age(years)")

#ScatterPlot
ggplot(mpg, aes(x = displ, y hwy)) + geom_point()
ggplot(mpg, aes(x=displ, y=hwy,colour=as.factor(year))) + geom_point(size=4)

#for discrete variable
table(data$Survived,as.factor(data$Sex))

#For Continue Variable
summary(data.frame(data$Age, data$Fare))

View(iris)
qplot(Sepal.Length, Petal.Length, data = iris, color = Species, size Petal.Width)
ggpairs(iris[,c(1:5)],ggplot2::aes(colour=Species))

Setosa=subset(iris,Species=="setosa")
summary(Setosa[,-5])
Versicolor=subset(iris,Species=="versicolor")
summary(Versicolor[,-5])
Virginia=subset(iris,Species=="virginia")
summary(Virginia[,-5])
