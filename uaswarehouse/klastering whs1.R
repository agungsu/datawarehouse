install.packages("inline")
install.packages("pracma")

library(inline)
library(pracma)

x <- mtcars["Honda Civic",]
y <- mtcars["Camaro Z28",]
xy <- rbind(x,y)
dist(xy,method="euclidian")
dist(xy,method="maximum")
dist(xy,method="manhattan")
dist(xy,method="canberra")
dist(xy,method="binary")
dist(xy,method="minkowski")

d <-dist(as.matrix(mtcars))
hc <-hclust(d)
plot(hc)
------------------------------------------------------------------------------
hc <-hclust(d,method="single")
plot(hc)
------------------------------------------------------------------------------
hc <-hclust(d,method="average")
plot(hc)
------------------------------------------------------------------------------
hc <-hclust(d,method="ward.D")
plot(hc)
------------------------------------------------------------------------------
hc <-hclust(d,method="ward2.D")
plot(hc)
------------------------------------------------------------------------------
hc <-hclust(d,method="centroid")
plot(hc)
------------------------------------------------------------------------------
hc <-hclust(d,method="median")
plot(hc)
------------------------------------------------------------------------------
library(ggplot2)
ggplot(mtcars, aes(mpg, cyl, color = cyl)) + geom_point()
hasilk<-kmeans(mtcars,3)
hasilk$cluster
setwd("C:/Users/Home/Documents/R")
write.csv(hasilk$cluster, file = "hasilklaster.csv")

write.csv(hasilk$centers, file = "hasilpusat.csv")