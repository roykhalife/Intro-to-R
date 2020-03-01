if(!require(pryr)){install.packages("pryr")}
library(pryr)
otype(mydata)

print(mydata)
summary(mydata)

mydata <- (women)
mydata
typeof(mydata)

s3o <- list(ID = "1", height = 58, weight = 115)
s3o
s3o1 <- list(ID = "2", height = 59, weight = 117)
s3o1

setClass("women", representation(ID="numeric", height="numeric", weight="numeric"))
s4o <- new("women", ID=1, height=58, weight=115)
s4o1 <- new("women", ID=2, height=59, weight=117)