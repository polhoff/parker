
MakeCircle <- function(midpoint, n_radius = 0.05, n_points = 16)
	{
	#midpoint = dhaka_loc[c('lon','lat')]; n_radius = 1; n_points = 16
	n_seq <- seq(0, 4*pi/2, length = n_points)
	add_y <- sin(n_seq) * n_radius
	add_x <- cos(n_seq) * n_radius
	
	out_x <- try(midpoint[,1] + add_x)
	out_y <- try(midpoint[,2] + add_y)
	
	out_x <- try(midpoint[1] + add_x)
	out_y <- try(midpoint[2] + add_y)
	
	out <- data.frame(x = out_x, y = out_y)
	#out <- cbind(out_x, out_y)
	
	return(out)
	}



MakeEllipse <- function(midpoint, n_radius = 0.05, n_points = 16, n_ratio = 0.5)
	{
	
	x0 <- midpoint[,1]
	y0 <- midpoint[,2]
	
	a <- n_radius
	b <- a * n_ratio
	
	
	n_theta <- seq(0, 4*pi/2, length = n_points)
	x <- x0 + a * cos(n_theta)
	y <- y0 + b * sin(n_theta)

	out <- data.frame(x, y)
	return(out)
	}

#MakeEllipse(data.frame(1,2))
