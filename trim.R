
trim <- function(x)
	{
	return(gsub('^ *|(?<= ) | *$', '', x, perl = TRUE))
	}
