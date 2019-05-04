####################
#QUESTION 3 SOLUTION 
####################


#Data is loaded as data frames
data_healthy <- read.delim("normal_skin_8genes_10samples.txt")
data_diseased <- read.delim("psoriasis_skin_8genes_10samples.txt")


cat("Correlation Score Matrix for Healthy Samples\n")
cat("----------------------------------------------\n")
cor(t(data_healthy))
cat("\n\n")


cat("Correlation Score Matrix for Diseased Samples\n")
cat("----------------------------------------------\n")
cor(t(data_diseased))
cat("\n\n")



#Merging healthy and diseased samples
merged_dframe <- cbind(data_healthy, data_diseased)

cat("Correlation Score Matrix for Combined Diseased and Healthy Samples\n")
cat("----------------------------------------------\n")
cor(t(merged_dframe))

