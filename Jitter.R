

JitterNorm <- function (x, n_sd = 1, c_type = 'arith')
	{
	x = as.numeric(x)
	y = x
	y[] = NA
	
	
	if (c_type == 'arith')
		{
		for (i in 1:length(x))
			{
			y[i] = rnorm(1,0,n_sd) + x[i]
			}
		}


	if (c_type == 'pct')
		{
		for (i in 1:length(x))
			{
			n_rnd = rnorm(1,1,n_sd)
			y[i] = n_rnd * x[i]
			}
		}

	return(y)
	}

JitterNorm(1:10)
JitterNorm(1:10, c_type = 'pct')
JitterNorm(1:10, n_sd = 0.1, c_type = 'pct')
