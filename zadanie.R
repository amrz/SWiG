dane<-read.table("dane4.txt", sep="\t", header=TRUE)
ogol<-dane[,2]/1000
names(ogol)<-dane[,1]
barplot(ogol, ylab="Liczba dzieci [tys]", xlab='Wiek')
srednia = mean(ogol)
abline(h=srednia)
mediana=median(ogol)
abline(h=mediana, col="blue")
odchylenie=sd(ogol)
abline(h=srednia+odchylenie, col="green")
abline(h=srednia-odchylenie, col="green")
title("Liczba dzieci w Polsce w 2011 (wg wieku)")
