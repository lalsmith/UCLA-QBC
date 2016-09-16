#Plotting and genetic variation data analysis exercises, Assignment 2

snps=as.matrix(hapmaps)


freq=sum(testSNP,na.rm=TRUE)/(2.0*sum(!is.na(hapmaps)))
freq

calc_freq=function(x){
  return(sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x))))
}

calc_het=function(x){
  return(sum(x==1,na.rm=TRUE)/(sum(!is.na(x))))
}

# And now let's apply the functions to each and every SNP
freq=apply(snps,1,calc_freq)
freq
length(freq)
het=apply(snps,1,calc_het)
het


compute_chisquare=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x))) #minor allele frequency
  cnt0=sum(x==0,na.rm=TRUE) #genotype counts, so this is the 0
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2) #vector for observed counts
  #print(obscnts)
  n=sum(obscnts)
  expcnts=c((1-freq)^2,2*freq*(1-freq),freq^2)*n #expected counts
  chisq=sum((obscnts-expcnts)^2/expcnts) #hardy-wineburg
  return(chisq)
}


chisqs=apply(snps,1,compute_chisquare)

pvals=pchisq(chisqs,1,lower.tail=FALSE)


#B

signifthres<-0.05
sum(pvals<signifthres) 
mean(pvals<signifthres) 

signifthres<-0.01
sum(pvals<signifthres) 
mean(pvals<signifthres) 

signifthres<-0.001
sum(pvals<signifthres) 
mean(pvals<signifthres)

#C
length(pvals)
num_pvals<-length(pvals)

#D
exp_pvals<-0
for(i in 1:num_pvals){
  exp_pvals[i]<-(i/num_pvals)
}
  
  #OR
exp_pvals<-(1:num_pvals)/num_pvals

#E

sort_pvals<- sort(pvals)
sort_exp_pvals <- sort(exp_pvals)

#F

log_sort_pvals<- (-log10(sort_pvals))
log_exp_pvals<- (-log10(exp_pvals))

#G, H, I
par(mfrow=c(1,1), mar=c(5,5,3,2))
plot(log_exp_pvals,log_sort_pvals, xlab="-log10(observed P-value)", ylab = "-log10(expected P-value)", cex.axis=2, cex.lab=2, pch=19)
abline(0,1, col="red", lty=5, lwd=4) #this works, but the line goes to orgin if you use lines instead you can make it start at (0,0)

lines(c(0,4), c(0,4), col="red", lty=5, lwd=4)

#2
#A
data.frame(pheno.sim.2014)
# or zz<-data.frame(pheno.sim.2014)
zz<-pheno.sim.2014
#or zz<-read.table('pheno.sim.2014',header=TRUE)
#B
summary(zz)
#or
n<-quantile(zz[ ,2], probs = .25)
m<-quantile(zz[ ,2], probs = .75)

plot(density(zz$glucose_mmolperL), main = 'Density Plot of the Distribution', xlab= 'Glucose Level (mml/L)', ylab= 'Density of Individuals')
abline(v=n)
abline(v=m)
