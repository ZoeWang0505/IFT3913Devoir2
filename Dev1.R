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

#T2. Évaluer l’hypothèse selon laquelle les classes qui ont été modifiées plus de 10 fois sont mieux
#commentées que celles qui ont été modifiées moins de 10 fois.
data2.plus <- data[data$NOCom >= 10,]
data2.moin <- data[data$NOCom <= 10,]

par(mfrow=c(1,2))
rbPal <- colorRampPalette(c('red','blue'))
plot(data2.plus$NOCom, data2.plus$DCP, ylab = "DCP", xlab ="NoCom", main = "modifiées plus de 10 fois")
abline(h=mean(data2.plus$DCP))
plot(data2.moin$NOCom, data2.moin$DCP, ylab = "DCP", xlab ="NoCom", main = "modifiées moins de 10 fois")
abline(h=mean(data2.moin$DCP))
