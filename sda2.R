####################
#QUESTION 2 SOLUTION 
####################

png(file = "boxplot.png")

#Data is loaded as data frames
data_healthy <- read.delim("normal_skin_8genes_10samples.txt")
data_diseased <- read.delim("psoriasis_skin_8genes_10samples.txt")



#First, healthy and diseased samples are merged in one data frame
merged_dframe <- cbind(data_healthy, data_diseased)


boxplot(t(merged_dframe))

#Saving file
dev.off()

