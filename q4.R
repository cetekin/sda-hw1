####################
#QUESTION 4 SOLUTION 
####################


#Data is loaded as data frames
data_healthy <- read.delim("normal_skin_8genes_10samples.txt")
data_diseased <- read.delim("psoriasis_skin_8genes_10samples.txt")


#Putting gene names in a list
gene_names <- row.names(data_healthy)




#M: Population mean
#m: Sample mean
#SD: Standard deviation
#M(H,D): Mean difference of healthy and diseased samples for the initial gene




#The null hypothesis is M(H,D)=0
#The alternative hypothesis is M(H,D) != 0


#Calculating sampling distribution standard deviation
samp_dist_sd <- sqrt(2.25/10+2.25/10)



for(gene_index in 1:8 ) {

	#Calculating sample mean difference
	samp_mean_diff <- mean(as.numeric(data_healthy[gene_index,]))-mean(as.numeric(data_diseased[gene_index,]))

	
	#Calculating z-score of sample mean difference
	z_score <- samp_mean_diff/samp_dist_sd


	#Calculating lower tail probability of z-score

	#if z-score is lower than 0 then lower tail prob is used otherwise upper tail is used
	if (z_score < 0) {
		tail_prob <- pnorm(z_score, mean = 0, sd = 1, lower.tail = TRUE)	

	}

	else {
		tail_prob <- pnorm(z_score, mean = 0, sd = 1, lower.tail = FALSE)	
	}
	


	#Calculating p-value
	p_value <- 2*tail_prob


	cat("P-value of",gene_names[gene_index],"gene means are different for healthy and diseased samples is:",p_value,"\n")

	

}



for(gene_index in 1:8 ) {


cat(mean(as.numeric(data_healthy[gene_index,])),mean(as.numeric(data_diseased[gene_index,])),"\n")
	

}


