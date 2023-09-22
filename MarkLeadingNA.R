
#this function takes a vector and returns an index where elements which form leading NAs are marked as FALSE

MarkLeadingNA <- function(in_var)
	{
	head(data_sub$DO,20)
	#in_var <- data_sub$DO
	x_ndx <- !is.na(in_var)
	
	n_len <- 1:length(in_var)
	
	first_notNA <- n_len[x_ndx][1]

	all_TRUE <- x_ndx
	all_TRUE[] <- TRUE
	
	if(first_notNA > 1)
		{
		all_TRUE[1:(first_notNA-1)] <- FALSE
		}

	return(all_TRUE)
	}


#x_ndx <- MarkLeadingNA(data_sub$DO)
