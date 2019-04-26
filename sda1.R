####################
#QUESTION 1 SOLUTION 
####################


#Data is loaded as data frames
data_healthy <- read.delim("normal_skin_8genes_10samples.txt")
data_diseased <- read.delim("psoriasis_skin_8genes_10samples.txt")

#Putting gene names in a list
gene_names <- row.names(data_healthy)


#We need to find the t-score whose upper tail probability is (1-0.90)/2=0.05 with degree of freedom=10-1=9

t_score <- qt(0.05, df=9, lower.tail=FALSE)






#HEALTHY DATA

cat("HEALTHY SAMPLES\n\n")
#Traversing through genes in the data frame to print the standard deviations and confidence intervals
for(gene_index in 1:8 ) {
	cat("GENE:",gene_names[gene_index],"\n\n")

	sample_mean_gene <- apply(data_healthy[gene_index,1:10], 1, mean)
	sample_std_gene <- apply(data_healthy[gene_index,1:10], 1, sd)



	conf_interval_left <- sample_mean_gene-t_score*(sample_std_gene/sqrt(10))
	conf_interval_right <- sample_mean_gene+t_score*(sample_std_gene/sqrt(10))

	cat("std. dev ---> ", sd(data_healthy[gene_index, 1:10]),"\n")
	cat("90% confidence interval of mean estimation ---> [", conf_interval_left,"," ,conf_interval_right ,"]\n")

	cat("------------------------------------\n")
}

cat("\n\n")

#DISEASED DATA

cat("DISEASED SAMPLES\n\n")
#Traversing through genes in the data frame to print the standard deviations and confidence intervals
for(gene_index in 1:8 ) {
	cat("GENE:",gene_names[gene_index],"\n\n")

	sample_mean_gene <- apply(data_diseased[gene_index,1:10], 1, mean)
	sample_std_gene <- apply(data_diseased[gene_index,1:10], 1, sd)


	conf_interval_left <- sample_mean_gene-t_score*(sample_std_gene/sqrt(10))
	conf_interval_right <- sample_mean_gene+t_score*(sample_std_gene/sqrt(10))

	cat("std. dev ---> ", sd(data_diseased[gene_index, 1:10]),"\n")
	cat("90% confidence interval of mean estimation ---> [", conf_interval_left,"," ,conf_interval_right ,"]\n")

	cat("------------------------------------\n")
}




