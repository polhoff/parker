brkstr <-
function(c_str)

	{

	n_len = nchar(c_str)

	SplitToSingle = rep("",n_len)

	for (i in 1:n_len)

		SplitToSingle[i] = substr(c_str,i,i)

	return(SplitToSingle)

	}
