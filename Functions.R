

CalcRMSE <- function(actual, predicted, na.remove = TRUE) 
	{
	sum_squared <- (actual - predicted)^2
	
	mean_ss <- mean(sum_squared, na.rm = na.remove)
	
	RMSE <- sqrt(mean_ss)
	return(RMSE)

	} 



ClsDev <- function()
	{
	x = 1:length(dev.list())
	for ( i in x ) dev.off()
	}

#ClsDev ()






MakeNewEnv <- function (c_env)
    {
    if (!exists (c_env, where = globalenv()))
    assign ( c_env, new.env(parent = globalenv()))
    }
 
#MakeNewEnv('TestEnv')
#print (TestEnv)








MoveAv <- function (invector, n_1, n_sides = 2)
    {
    x1 <- stats::filter(invector, rep(1/n_1,n_1), sides = n_sides)
    return(x1)
	}

#MakeNewEnv('TestEnv')
#print (TestEnv)










MoveAvEmbed <- function(indata, n_window = 10, remove_na = TRUE, l_sides = TRUE)
	{
	#x <- embed(indata, 1)
	#indata = 1:1000; n_window = 10; remove_na = TRUE; l_sides = TRUE
	x <- embed(indata, 1)
	n_len1 <- dim(x)[1]

	x <- embed(indata, n_window)
	
	x.mean <- rowMeans(x, na.rm = remove_na)
	
	#check dimension
	n_len2 <- length(x.mean)

	
	n_NAs <- n_len1 - n_len2
	n_NAs1 <- rep(NA, floor(n_NAs/2))
	n_NAs2 <- rep(NA, ceiling(n_NAs/2))
	
	if(l_sides)
		{
		x.mean <- c(n_NAs1, x.mean, n_NAs2)
		stopifnot(length(x.mean) == n_len1)
		}

	return(x.mean)
	}



#x <- 1:1000
#x2 <- MoveAvEmbed(x,100)



#plot(x)
#points(x2, col = 'grey50')



#http://www.cookbook-r.com/Manipulating_data/Calculating_a_moving_average/
# n: the number of samples
# centered: if FALSE, then average current sample and previous (n-1) samples
#           if TRUE, then average symmetrically in past and future. (If n is even, use one more sample from future.)
movingAverage <- function(x, n=1, centered=FALSE) {
    
    if (centered) {
        before <- floor  ((n-1)/2)
        after  <- ceiling((n-1)/2)
    } else {
        before <- n-1
        after  <- 0
    }

    # Track the sum and count of number of non-NA items
    s     <- rep(0, length(x))
    count <- rep(0, length(x))
    
    # Add the centered data 
    new <- x
    # Add to count list wherever there isn't a 
    count <- count + !is.na(new)
    # Now replace NA_s with 0_s and add to total
    new[is.na(new)] <- 0
    s <- s + new
    
    # Add the data from before
    i <- 1
    while (i <= before) {
        # This is the vector with offset values to add
        new   <- c(rep(NA, i), x[1:(length(x)-i)])

        count <- count + !is.na(new)
        new[is.na(new)] <- 0
        s <- s + new
        
        i <- i+1
    }

    # Add the data from after
    i <- 1
    while (i <= after) {
        # This is the vector with offset values to add
        new   <- c(x[(i+1):length(x)], rep(NA, i))
       
        count <- count + !is.na(new)
        new[is.na(new)] <- 0
        s <- s + new
        
        i <- i+1
    }
    
    # return sum divided by count
    s/count
}

