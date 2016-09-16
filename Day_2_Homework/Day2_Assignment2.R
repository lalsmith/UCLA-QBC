#1
data<-ChickWeight
sort(data$Time)
data<-within(data,{
  Chick<-factor(Chick)
  Diet<-factor(Diet)
  Time<-factor(Time)
})

No_Time<-subset(data, Time==0)
levels(data$Diet)
str(data$Diet)
boxplot(weight~Diet, data=No_Time, xlab= 'Diet Type', ylab='Weight of Chicks', las=1, col=c("plum", "cornflowerblue", "white", "darkturquoise"), main= 'Chick Weight by Diet', ylim=c(38, 45))

anova1=aov(weight~Diet, data=No_Time) # set up the statistical test
summary(anova1) # look at the results of the statistical test
TukeyHSD(anova1)
#not statistically significant
text(c(1,2,3,4),c(44,44,44), # set the location of the letters (first c is x coord, second is y coord)
     c('A','A','A', 'A'), # set which letters to display  on the plot
     cex=2)

#2
quartz()
Last_Time<-subset(data, Time==21)
levels(data$Diet)
str(data$Diet)
boxplot(weight~Diet, data=Last_Time, xlab= 'Diet Type', ylab='Weight of Chicks', las=1, col=c("plum", "cornflowerblue", "white", "darkturquoise"), main= 'Chick Weight by Diet on 21st Day', ylim=c(50,450))
anova1=aov(weight~Diet, data=Last_Time) # set up the statistical test
summary(anova1) # look at the results of the statistical test
TukeyHSD(anova1)

#we found some statistically significant data

text(c(1,2,3,4),c(400,400,400), # set the location of the letters (first c is x coord, second is y coord)
     c('A','AB','B', 'AB'), # set which letters to display  on the plot
     cex=2)

#3 
summary(aov(weight~ Diet*Time+Error(Chick), data=data))

#4
data<-ChickWeight
Diet_1<-subset(data, Diet==1)
Diet_2<-subset(data, Diet==2)
Diet_3<-subset(data, Diet==3)
Diet_4<-subset(data, Diet==4)


plot(Diet_1$Time,Diet_1$weight, col="red", lty=1, lwd=1, type='p', ylim=c(30, 380), main='Chick Weights over Time', xlab= 'Time (days)', ylab=('Individual Chick Weight'))
points(Diet_2$Time,Diet_2$weight, col="green")
points(Diet_3$Time,Diet_3$weight, col="plum")
points(Diet_4$Time,Diet_4$weight, col="darkslateblue")

colors<- c("red", "green", "plum", "darkslateblue")
legend("topleft", c("Diet 1", "Diet 2", "Diet 3", "Diet 4"), col=colors, pch=21)

#5
#plot(data$Time,data$weight, xlab='Time(days)',ylab='Chick Weight',pch=16,col=rainbow(50), main='Chick Growth')
colors=rainbow(50)
plot(NA, xlim= c(0, 23), ylim= c(30, 380), main='Growth of Each Chick', ylab= 'Time (days)', xlab='Chick Weight')
cc<-1
for(cc in 1:50){
  cc_data<-subset(data, Chick==cc)
   lines(cc_data$Time, cc_data$weight, col=colors[cc])
}


