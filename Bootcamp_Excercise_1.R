# 1 write a loop statement so that it runs from 1:9 and is all blanks and one astrisk
for(ii in 1:9) {
  if(ii==9) {
    cat("*")
  }
  else{
    cat("\n")
  }
}
# 2 
for (ii in 1:19) {
  if(ii%%2) {
    cat("&")
  }
  else{
    cat("*")
  }
}
# 3 the start would be 11 and the end would be 15 because 10 is the original dog, and you add one for each variable (first is 10+1 = 11, last is 14+1=15)
#meatloaf problem -4 and -30, first problem is -4=0-5+1, You keep doing that until you get to the last problem for ii = 9 and it is -22-9+1 which equals -30
#bubble problem it is -1 and -4 because bubbles is i and i is -1:-4
# 4 
years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 2 == 0){
    cat(years[ii], 'Hooray, congressional elections!', sep = '\t', fill = T)
    if(years[ii] %% 4 ==0) {
      cat(years[ii], 'Hooray, presidential elections!', sep = '\t', fill = T)
    }
  }
}

#5
bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5)
compounded <- rep(1, length(bankAccounts))
interestRate <- 0.0125;
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }

#6
bankAccounts <- c(10, 9.2, 5.6)
interestRate<- 0.0525;
house <- c(4.8, 3.8, 5.7)
food <- c(3.5, 4.3, 5.0);
fun <- c(7.8, 2.1, 10.5)
for (j in 1:5) {
for (i in 1:length(bankAccounts)){
  bankAccounts[i] <- bankAccounts[i] - (house[i] + food[i] + fun[i])
}
income <- c(21, 21, 21)
for (i in 1:length(bankAccounts)){
  bankAccounts[i] <- bankAccounts[i] + income[i]
}
for (i in 1:length(bankAccounts)) {
  bankAccounts[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }
}
bankAccounts

# 7
bankAccounts <- c(10, 9.2, 5.6)
interestRate<- 0.0525;
house <- c(4.8, 3.8, 5.7)
food <- c(3.5, 4.3, 5.0);
fun <- c(7.8, 2.1, 10.5)
trust <- c(5, 0, 5)
for (j in 2015:2020) {
  if(j%%2){
  for (i in 1:length(bankAccounts)){
    bankAccounts[i] <- bankAccounts[i] - (house[i] + food[i] + fun[i])
  }
  income <- c(21, 21, 21)
  for (i in 1:length(bankAccounts)){
    bankAccounts[i] <- bankAccounts[i] + income[i] + trust[i]
  }
  for (i in 1:length(bankAccounts)) {
    bankAccounts[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }
  }
  else {
    for (i in 1:length(bankAccounts)){
      bankAccounts[i] <- bankAccounts[i] - (house[i] + food[i] + fun[i])
    }
    income <- c(21, 21, 21)
    for (i in 1:length(bankAccounts)){
      bankAccounts[i] <- bankAccounts[i] + income[i]
    }
    for (i in 1:length(bankAccounts)) {
      bankAccounts[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }
  }
}
bankAccounts
  
# 8
n <- (1:17)
m <- 0
j <- 1

while (j<18) {
  m<- n[j] + m
  j <-j+1
}
m

# 9 
Turtle <- function(x){
if(x<= -1){
  cat("small")
  }
else if(x > -1 && x < 1){
    cat("medium")
}
else{
  cat("big")
}
}

