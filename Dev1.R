#Devoir2 IFT3913

setwd("/home/xiaoqian/Documents/IFT3913/IFT3913Devoir2")

load("/home/xiaoqian/Documents/IFT3913/IFT3913Devoir2/jfreechart-stats.csv")

#T1. Diagramme à moustaches

data = jfreechart.stats[,2:5]

par(mfrow=c(2,2))
boxplot(data$DCP,data=data$DCP,main="DCP", outline = TRUE,ylab="densité de commentaires")
boxplot(data$NCLOC,data=data$NCLOC,main="NCLOC", outline = TRUE,ylab="NCLOC")
boxplot(data$NOCom,data=data$NOCom,main="NOCom", outline = TRUE,ylab="nombre de commits")
boxplot(data$WMC,data=data$WMC,main="WMC", outline = TRUE,ylab="complexité Weighed")



#5.d
library(ggplot2)
#h5<-hist(bonds$Circuits, main="nombre de circuits par saison ",breaks = 20,ylab="circuits", xlab="Année")
ggplot(bonds, aes(x=Année, y = Circuits )) + 
  geom_bar(stat="identity", fill= "grey", colour= "black")
