# B.3.5 Data Frames
# data frames are 2D, each column has the same number of rows, but the columns can be different (numeric, integer, charactor, complex, imaginary)
dat <- data.frame(species = c("S.altissima", "S.rugosa", "E.graminifolia", "A.pilosus"), treatment = factor(c("Control", "Water", "Control", "Water")), height = c(1.1, 0.8, 0.9, 1), width= c(1, 1.7, 0.6, 0.2))
dat
# you can extract data from here as well
dat[2, ]
dat[3, 4]
# test elements in the data frame
dat [ ,2] == "Water"
dat[dat[ ,2] == "Water", ]
# that one above is saying tell me which parts of the data set are true for the 2nd column being water, the second comma gives you all the columns for the two rows it is TRUE for, the way below is much easier
subset(dat, treatment== "Water")
