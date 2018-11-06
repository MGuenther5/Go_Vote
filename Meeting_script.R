#Script to play with
#Mirae Guenther
#November 5, 2018
#mapping stream locations

#Packages: ggmap, ggplot2

#clear R's brain
rm(list=ls())
#where is R looking
getwd()
#tell R where to look
setwd("/Users/mguenther5/Desktop/R data")
#confirm it's looking there
getwd()

#New attempt from online resource
library(ggplot2)
library(ggmap)

#Polling locations
#Vote_1	-96.670658	40.795535
#Poll_2	-96.688154	40.811577
#Polling_3	-96.62225	40.773502


##Create data frame with lat and long from GPS points
d<-data.frame(lat=c(4.795535, 40.811577, 40.773502),lon=c(-96.670658, -96.688154, -96.62225))

NEmap<-get_map("Lincoln,Nebraska,USA", zoom=7)
p<-ggmap(Lincmap)
p<-p+geom_point(data=d, aes(x=lon,y=lat))
p
ggplot_build(p)