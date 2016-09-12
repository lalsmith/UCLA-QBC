#This will calculate the mean of 10 random standard normal variables.
mean(rnorm(10))
# B.1 Help
'help'(mean)
help(mean)
# two alternate ways to pull up the help page, to reverse, do the following
options(htmlhelp = FALSE)
# if you don't know exactly the name you sare seraching for in R try
help.search("mean")
apropos("mean")
# Packages
RSiteSearch("violin")
RSiteSearch("violin", restrict = c("functions"))
# you can combine help functions
help(RSiteSearch)