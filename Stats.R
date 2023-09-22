
GeoMean <- function(x, switch_sign = FALSE, l_removeneg = TRUE)
	{
	if(switch_sign){ x=-x}
	
	
	if(l_removeneg){x[x <= 0] <- NA}
	
	out <- exp(mean(log(x), na.rm = TRUE))
	
	if(switch_sign){ out=-out}
	
	return(out)
	}


GeoMean(1:10)



GeoMean01 <- function(x)
	{
	exp(sum(log(x[x > 0]), na.rm = TRUE) / length(x))
	}


GeoMean01(1:10)




HarMean <- function(x, switch_sign = FALSE)
	{
	if(switch_sign){ x=-x}

	#ensure vector
	x <- as.numeric(x)
	
	#remove zero values
	x <- x[x != 0]
	
	#remove NA
	x <- x[!is.na(x)]
	
	#count
	x_n <- length(x)
	
	x_sum <- x_n / sum(1/x)
		
	if(switch_sign){ out=-out}
	out <- exp(mean(log(x), na.rm = TRUE))
	
	return(out)
	}



HarMean(1:10)


Proportion <- function(indata, excludeNAs = TRUE)
	{
	indata <- as.data.frame(indata)
	sum1 <- colSums(indata, na.rm = excludeNAs)
	sum3 <- colSums(!is.na(indata))

	outdata <- round(sum1/sum3*100,0)
	outdata <- data.frame(outdata)
	return(outdata)
	}


#test1 <- colour.proportion[,1:2]; Proportion(test1)
#test1 <- colour.proportion[,1]; Proportion(test1)




which.quantile <- function (x, probs, na.rm = FALSE)
	{
	if (! na.rm & any (is.na (x)))
	return (rep (NA_integer_, length (probs)))

	o <- order (x)
	n <- sum (! is.na (x))
	o <- o [seq_len (n)]

	nppm <- n * probs - 0.5
	j <- floor(nppm)
	h <- ifelse((nppm == j) & ((j%%2L) == 0L), 0, 1)
	j <- j + h

	j [j == 0] <- 1
	o[j]
	}




which.median <- function (x, probs = 0.5000001, na.rm = FALSE)
	{
	if (! na.rm & any (is.na (x)))
	return (rep (NA_integer_, length (probs)))

	o <- order (x)
	n <- sum (! is.na (x))
	o <- o [seq_len (n)]

	nppm <- n * probs - 0.5
	j <- floor(nppm)
	h <- ifelse((nppm == j) & ((j%%2L) == 0L), 0, 1)
	j <- j + h

	j [j == 0] <- 1
	o[j]
	}


