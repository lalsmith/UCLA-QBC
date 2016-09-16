# Plotting Excercise 1
get_heights <- function(x){
  heights<- rnorm(x, 69, 10)
  return(mean(heights))
}
mean_heights_100 <- rep(0,1000)
for(i in 1:1000){
  mean_heights_100[i] <- get_heights(100)
}
mean_heights_1000 <- rep(0,1000)
for(i in 1:1000){
  mean_heights_1000[i] <- get_heights(1000)
}
bins <- seq(65, 73, by =1)
count_100<- hist(mean_heights_100, breaks = bins)$counts
count_1000<- hist(mean_heights_1000, breaks =bins)$counts

#sequence now has 8, because there are 8 bins, even though there are 9 numbers
#col=c() becuase there are two values so I need it to be a vector

barplot(rbind(count_100, count_1000), col=c(2,4), beside=T, names.arg=seq(65, 72, by=1), xlab= 'Average height (inches)', ylab= 'Count')

legend('topright', c("n=100", "n=1000"), col = c(2,4), lwd=4)
