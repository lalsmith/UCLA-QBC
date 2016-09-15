# this is an r script

 2+2
 
 getwd()
 
setwd("/Users/thesmithfamily/GitHub/UCLA-QBC/In-Class-Excercises")
xx <- 2
22-> yy
# you can assign both directions
# from ?lm there is an example, if you use the example and you are still confused you can highlight and examine each part (ie "weight")
grad.school.tips <- c("use a reference manager", "learn a programming languate", "write lots of papers")
grad.school.tips
str(grad.school.tips)
?str()
?cat
cat(grad.school.tips, sep = "\n")
# remove variable rm
rm(yy)
yy
?rm
# to remove EVERYTHING, use rm(list = ls()). This passes the contents of ls() to rm() so that everything in the environmetn is deleated.
ls()
rm(list = ls())
## **source()**
The source() function will load functions and variable from another R script into your R session. This means that you can save and reuse functions that you develop for other projects. 
# library loads R package they have already loaded
library(ape)
list.files()
tt <- read.tree("tree.tre")
str(tt)
?str()
attributes(tt)
tt$tip.label[1:10]
#show me the tip label, but only the first ten
## pruning the tree
This tree is giant! Lets prune down and plot the pruned tree.
{r, echo = F}
pruned.tree <- drop.tip(tt, tt$tip.label[1:7900])
plot(ladderize(pruned.tree), cex = 0.5, type = "radial")
pruned.tree <- drop.tip(tt, tt$tip.label[1:7900])
plot(ladderize(pruned.tree), cex = 0.5)
#work through reading in the data, reading in list.files, then manipulating that file, data file matched to the tree, can reduce phylogony (match the two data files)
#how would you make the data frame, do the challenge, answer the questions

# Control Statements
for (ii in 1:5) {
  cat("\nthe number is ", ii)
}
# you can loop over all items in a vector
notfish <- c("bat", "dolphin", "toad", "soldier")
for (animal in notfish) {
  get
}

# a WHILE look does while some conditions is true, do the curly braces
while(thesis_idea_sucks) {
  get_New_Thesis_Idea();
}

#you can use the break statemnt to set condidtions for breaking out of while loop
xx <- 1
xx <- 1
while (xx < 5) {
  xx<- xx+1;
  if (xx == 3) {
    break; }
}
print (xx)
#if your while loop is continues and there are no conditions to get out, check it
# R reads ; as end of the line (return works too) but you use them for the end of statements so that you can see it yourself

#If statements allow our code to diverge depending on conditions IF(condition is true) {do osmething}
# = is xx is a, == then you are asking R to check the value, are they the same or are they not, TRUE or FALSE return, can do xx == "a" TRUE and "a" == xx
# == comparing values on right and left
# %% does left value evenly go into right value, 

if (xx == 'a')
if (xx == 'b')
  if (xx == 'c')
    for(ii in 1:6) {
      if (ii %% 2) {
        cat(ii, " is odd\n")
      }
      else{
        cat(ii, " is even\n")
      }
    }