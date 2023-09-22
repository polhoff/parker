Contour <- function (x, columns, type = "contour")
	{


	anal_col <- columns[1]
	x_col <- columns[2]
	y_col <- columns[3]

		
	xx = tapply ( x[, anal_col], x[, c(x_col, y_col)], sum )
	
	xx1 = list ( as.numeric ( rownames ( xx ) ), as.numeric ( colnames ( xx ) ), xx )
	names ( xx1 ) = c ( "x", "y", "z" )


	if ( type == "contour" )
		{
		contour(xx1)
		}

	if ( type == "image" )
		{
		image(xx1)
		}

	return (xx1)
	}
